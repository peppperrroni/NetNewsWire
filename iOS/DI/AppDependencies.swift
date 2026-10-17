//
//  AppDependencies.swift
//  NetNewsWire-iOS
//
//  The app-scope composition root. Built once, first, by AppDelegate.
//

import Foundation
import RSCore
import RSWeb
import ActivityLog
import FeedFinder
import Account

@MainActor final class AppDependencies {

	let batchUpdate: BatchUpdate
	let mainThreadOperationQueue: MainThreadOperationQueue
	let downloadCache: DownloadCache
	let downloader: Downloader
	let networkMonitor: NetworkMonitor
	let activityLog: ActivityLog
	let feedFinder: FeedFinder
	let accountManager: AccountManager

	init() {
		batchUpdate = BatchUpdate()
		mainThreadOperationQueue = MainThreadOperationQueue()
		downloadCache = DownloadCache()
		downloader = Downloader(cache: downloadCache)
		networkMonitor = NetworkMonitor()
		activityLog = ActivityLog()
		feedFinder = FeedFinder(downloader: downloader, activityLog: activityLog)

		// Root accessors for code with no injection point (listed in the app README).
		Downloader.current = downloader
		ActivityLog.current = activityLog

		accountManager = AccountManager(activityLog: activityLog, batchUpdate: batchUpdate, networkMonitor: networkMonitor, feedFinder: feedFinder)
		AccountManager.shared = accountManager  // removed in the AccountManager port
	}
}
