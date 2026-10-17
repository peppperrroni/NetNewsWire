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
import Articles
import HTMLMetadata
import Images

@MainActor final class AppDependencies {

	let batchUpdate: BatchUpdate
	let mainThreadOperationQueue: MainThreadOperationQueue
	let downloadCache: DownloadCache
	let downloader: Downloader
	let networkMonitor: NetworkMonitor
	let activityLog: ActivityLog
	let feedFinder: FeedFinder
	let accountManager: AccountManager
	let authorCache: AuthorCache
	let htmlMetadataDatabase: HTMLMetadataDatabase
	let htmlMetadataDownloader: HTMLMetadataDownloader
	let imageMetadataDatabase: ImageMetadataDatabase
	let imageDownloader: ImageDownloader
	let faviconDownloader: FaviconDownloader
	let feedIconDownloader: FeedIconDownloader
	let authorAvatarDownloader: AuthorAvatarDownloader
	let faviconGenerator: FaviconGenerator
	let iconImageCache: IconImageCache

	init() {
		batchUpdate = BatchUpdate()
		mainThreadOperationQueue = MainThreadOperationQueue()
		downloadCache = DownloadCache()
		downloader = Downloader(cache: downloadCache)
		networkMonitor = NetworkMonitor()
		activityLog = ActivityLog()
		feedFinder = FeedFinder(downloader: downloader, activityLog: activityLog)

		authorCache = AuthorCache()
		htmlMetadataDatabase = HTMLMetadataDatabase(databasePath: HTMLMetadataDatabase.defaultDatabasePath)
		htmlMetadataDownloader = HTMLMetadataDownloader(downloader: downloader, activityLog: activityLog, database: htmlMetadataDatabase)
		imageMetadataDatabase = ImageMetadataDatabase()
		imageDownloader = ImageDownloader(downloader: downloader, activityLog: activityLog, imageMetadataDatabase: imageMetadataDatabase)
		faviconDownloader = FaviconDownloader(downloader: downloader, activityLog: activityLog, imageMetadataDatabase: imageMetadataDatabase, htmlMetadataDownloader: htmlMetadataDownloader)
		feedIconDownloader = FeedIconDownloader(imageDownloader: imageDownloader, imageMetadataDatabase: imageMetadataDatabase, htmlMetadataDownloader: htmlMetadataDownloader)
		authorAvatarDownloader = AuthorAvatarDownloader(imageDownloader: imageDownloader)
		faviconGenerator = FaviconGenerator()
		iconImageCache = IconImageCache(feedIconDownloader: feedIconDownloader, faviconDownloader: faviconDownloader, authorAvatarDownloader: authorAvatarDownloader)

		// Root accessors for code with no injection point (listed in the app README).
		Downloader.current = downloader
		ActivityLog.current = activityLog
		AuthorCache.current = authorCache
		FaviconDownloader.current = faviconDownloader
		FaviconGenerator.current = faviconGenerator
		IconImageCache.shared = iconImageCache  // removed in the Shared/iOS port

		accountManager = AccountManager(activityLog: activityLog, batchUpdate: batchUpdate, networkMonitor: networkMonitor, feedFinder: feedFinder)
		AccountManager.shared = accountManager  // removed in the AccountManager port
	}
}
