//
//  FeedFinder.swift
//  NetNewsWire
//
//  Created by Brent Simmons on 8/2/16.
//  Copyright © 2016 Ranchero Software, LLC. All rights reserved.
//

import Foundation
import os
import RSParser
import RSWeb
import RSCore
import ActivityLog

public enum FeedFinderError: LocalizedError {
	case feedNotFound

	public var errorDescription: String? {
		switch self {
		case .feedNotFound:
			return NSLocalizedString("The feed couldn’t be found and can’t be added.", comment: "Not found")
		}
	}
}

public final class FeedFinder: Sendable {
	private let downloader: Downloader
	private let activityLog: ActivityLog

	public init(downloader: Downloader, activityLog: ActivityLog) {
		self.downloader = downloader
		self.activityLog = activityLog
	}

	private static let logger = Logger(subsystem: Logger.nnwSubsystem, category: "FeedFinder")

	/// Which discovery path produced the result. Used to write a more useful
	/// completion message on the parent `findFeed` activity.
	enum FindStrategy {
		case specialCase
		case microblogJSON
		case directFeed
		case htmlHead
		case candidates
	}

	@concurrent public func find(url: URL) async throws -> Set<FeedSpecifier> {
		let activityID = await activityStart(url: url)
		do {
			let (result, strategy) = try await performFind(url: url)
			await activityComplete(id: activityID, result: result, strategy: strategy)
			return result
		} catch {
			await activityFail(id: activityID, error: error)
			throw error
		}
	}

	@concurrent private func performFind(url: URL) async throws -> (Set<FeedSpecifier>, FindStrategy) {
		// Check special cases first.
		if let feedSpecifier = FeedSpecifier.knownFeedSpecifier(url: url) {
			Self.logger.info("FeedFinder: found special case feed URL: \(url.absoluteString) - \(feedSpecifier.urlString)")
			return (Set([feedSpecifier]), .specialCase)
		}

		let downloadResponse = try await self.downloadAndLog(url)
		let data = downloadResponse.data
		let response = downloadResponse.response

		if response?.forcedStatusCode == 404 {
			if var urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: false), urlComponents.host == "micro.blog" {
				urlComponents.path = "\(urlComponents.path).json"
				if let newURLString = urlComponents.url?.absoluteString {
					let microblogFeedSpecifier = FeedSpecifier(title: nil, urlString: newURLString, source: .HTMLLink, orderFound: 1)
					return (Set([microblogFeedSpecifier]), .microblogJSON)
				}
			}
			throw FeedFinderError.feedNotFound
		}

		guard let data, let response else {
			throw FeedFinderError.feedNotFound
		}

		if !response.statusIsOK || data.isEmpty {
			throw FeedFinderError.feedNotFound
		}

		// Redirects mean relative links have to resolve against where the page actually came from.
		let urlToUse = response.url ?? url

		if FeedFinder.isFeed(data, urlToUse.absoluteString) {
			let feedSpecifier = FeedSpecifier(title: nil, urlString: urlToUse.absoluteString, source: .userEntered, orderFound: 1)
			return (Set([feedSpecifier]), .directFeed)
		}

		if !FeedFinder.isHTML(data) {
			throw FeedFinderError.feedNotFound
		}

		return try await findFeedsInHTMLPage(htmlData: data, urlString: urlToUse.absoluteString)
	}

	/// Wraps `downloader.download(url)` with a per-URL activity entry so the
	/// fetch shows up in the Feed Finder activity stream. Public so feed-finding-adjacent
	/// fetches can join the same stream.
	public func downloadAndLog(_ url: URL) async throws -> DownloadResponse {
		let id = await activityFetchStart(url: url)
		do {
			let downloadResponse = try await downloader.download(url)
			await activityFetchComplete(id: id, data: downloadResponse.data, response: downloadResponse.response, returnedFromCache: downloadResponse.returnedFromCache)
			return downloadResponse
		} catch {
			await activityFetchFail(id: id, error: error)
			throw error
		}
	}

	@MainActor private func activityStart(url: URL) -> Int {
		let id = activityLog.createActivity(owner: .feedFinder, kind: .findFeed(urlString: url.absoluteString))
		activityLog.didStart(id: id)
		return id
	}

	@MainActor private func activityComplete(id: Int, result: Set<FeedSpecifier>, strategy: FindStrategy) {
		let message = Self.parentCompletionMessage(result: result, strategy: strategy)
		activityLog.didComplete(id: id, message: message)
	}

	@MainActor private func activityFail(id: Int, error: any Error) {
		activityLog.didFail(id: id, error: error)
	}

	@MainActor private func activityFetchStart(url: URL) -> Int {
		let id = activityLog.createActivity(owner: .feedFinder, kind: .fetchFeedCandidate(urlString: url.absoluteString))
		activityLog.didStart(id: id)
		return id
	}

	@MainActor private func activityFetchComplete(id: Int, data: Data?, response: URLResponse?, returnedFromCache: Bool) {
		let message = Self.fetchCompletionMessage(data: data, response: response)
		activityLog.didComplete(id: id, message: message, durationIsSignificant: !returnedFromCache, returnedFromCache: returnedFromCache)
	}

	@MainActor private func activityFetchFail(id: Int, error: any Error) {
		activityLog.didFail(id: id, error: error)
	}
}

private extension FeedFinder {

	static func addFeedSpecifier(_ feedSpecifier: FeedSpecifier, feedSpecifiers: inout [String: FeedSpecifier]) {
		// If there's an existing feed specifier, merge the two so that we have the best data. If one has a title and one doesn't, use that non-nil title. Use the better source.

		if let existingFeedSpecifier = feedSpecifiers[feedSpecifier.urlString] {
			let mergedFeedSpecifier = existingFeedSpecifier.feedSpecifierByMerging(feedSpecifier)
			feedSpecifiers[feedSpecifier.urlString] = mergedFeedSpecifier
		} else {
			feedSpecifiers[feedSpecifier.urlString] = feedSpecifier
		}
	}

	func findFeedsInHTMLPage(htmlData: Data, urlString: String) async throws -> (Set<FeedSpecifier>, FindStrategy) {
		// Feeds in the <head> section we automatically assume are feeds.
		// If there are none from the <head> section,
		// then possible feeds in <body> section are downloaded individually
		// and added once we determine they are feeds.

		let possibleFeedSpecifiers = Self.possibleFeedsInHTMLPage(htmlData: htmlData, urlString: urlString)
		var feedSpecifiers = [String: FeedSpecifier]()
		var feedSpecifiersToDownload = Set<FeedSpecifier>()

		var didFindFeedInHTMLHead = false

		for oneFeedSpecifier in possibleFeedSpecifiers {
			if oneFeedSpecifier.source == .HTMLHead {
				Self.addFeedSpecifier(oneFeedSpecifier, feedSpecifiers: &feedSpecifiers)
				didFindFeedInHTMLHead = true
			} else {
				if feedSpecifiers[oneFeedSpecifier.urlString] == nil {
					feedSpecifiersToDownload.insert(oneFeedSpecifier)
				}
			}
		}

		if didFindFeedInHTMLHead {
			return (Set(feedSpecifiers.values), .htmlHead)
		} else if feedSpecifiersToDownload.isEmpty {
			throw FeedFinderError.feedNotFound
		} else {
			let result = await downloadFeedSpecifiers(feedSpecifiersToDownload, feedSpecifiers: feedSpecifiers)
			return (result, .candidates)
		}
	}

	static func possibleFeedsInHTMLPage(htmlData: Data, urlString: String) -> Set<FeedSpecifier> {
		let parserData = ParserData(url: urlString, data: htmlData)
		var feedSpecifiers = HTMLFeedFinder(parserData: parserData).feedSpecifiers

		if feedSpecifiers.isEmpty {
			// Odds are decent it's a WordPress site, and just adding /feed/ will work.
			// It's also fairly common for /index.xml to work.
			if let url = URL(string: urlString) {
				let feedURL = url.appendingPathComponent("feed", isDirectory: true)
				let wordpressFeedSpecifier = FeedSpecifier(title: nil, urlString: feedURL.absoluteString, source: .HTMLLink, orderFound: 1)
				feedSpecifiers.insert(wordpressFeedSpecifier)

				let indexXMLURL = url.appendingPathComponent("index.xml", isDirectory: false)
				let indexXMLFeedSpecifier = FeedSpecifier(title: nil, urlString: indexXMLURL.absoluteString, source: .HTMLLink, orderFound: 1)
				feedSpecifiers.insert(indexXMLFeedSpecifier)
			}
		}

		return feedSpecifiers
	}

	static func isHTML(_ data: Data) -> Bool {
		return data.isProbablyHTML
	}

	func downloadFeedSpecifiers(_ downloadFeedSpecifiers: Set<FeedSpecifier>, feedSpecifiers: [String: FeedSpecifier]) async -> Set<FeedSpecifier> {

		var resultFeedSpecifiers = feedSpecifiers

		await withTaskGroup(of: FeedSpecifier?.self) { group in
			for downloadFeedSpecifier in downloadFeedSpecifiers {
				guard let url = URL(string: downloadFeedSpecifier.urlString) else {
					continue
				}

				group.addTask {
					do {
						let downloadResponse = try await self.downloadAndLog(url)
						if let data = downloadResponse.data, let response = downloadResponse.response, response.statusIsOK {
							if Self.isFeed(data, downloadFeedSpecifier.urlString) {
								return downloadFeedSpecifier
							}
						}
					} catch {
						// The per-URL activity has already recorded the failure;
						// one bad candidate shouldn't fail the whole find.
					}
					return nil
				}
			}

			for await feedSpecifier in group {
				if let feedSpecifier {
					Self.addFeedSpecifier(feedSpecifier, feedSpecifiers: &resultFeedSpecifiers)
				}
			}
		}

		return Set(resultFeedSpecifiers.values)
	}

	static func isFeed(_ data: Data, _ urlString: String) -> Bool {
		let parserData = ParserData(url: urlString, data: data)
		return FeedParser.canParse(parserData)
	}

	static func parentCompletionMessage(result: Set<FeedSpecifier>, strategy: FindStrategy) -> String {
		let count = result.count
		if count == 0 {
			switch strategy {
			case .candidates:
				return "No feeds found in candidate URLs"
			default:
				return "No feeds found"
			}
		}
		let plural = count == 1 ? "feed" : "feeds"
		switch strategy {
		case .specialCase:
			return "\(count) \(plural) (special case match)"
		case .microblogJSON:
			return "\(count) \(plural) via Micro.blog .json fallback"
		case .directFeed:
			return "Direct feed"
		case .htmlHead:
			return "\(count) \(plural) via HTML <head>"
		case .candidates:
			return "\(count) \(plural) via candidate URLs"
		}
	}

	static func fetchCompletionMessage(data: Data?, response: URLResponse?) -> String {
		guard let response else {
			return "No response"
		}
		let statusPart = formattedStatus(response.forcedStatusCode)
		if response.statusIsOK, let data, !data.isEmpty {
			return "\(statusPart) · \(ActivityLog.dataSizeMessage(data))"
		}
		return statusPart
	}

	static func formattedStatus(_ statusCode: Int) -> String {
		if statusCode == 0 {
			return "No status"
		}
		// HTTPURLResponse.localizedString returns lowercase phrases like "not found".
		// 200 maps to "no error" in some Foundation builds; spell out "OK" ourselves.
		let phrase: String
		switch statusCode {
		case 200:
			phrase = "OK"
		case 304:
			phrase = "Not Modified"
		default:
			phrase = HTTPURLResponse.localizedString(forStatusCode: statusCode).capitalized
		}
		return "\(statusCode) \(phrase)"
	}
}
