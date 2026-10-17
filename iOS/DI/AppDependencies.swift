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
	let authorCache: AuthorCache
	let htmlMetadataDatabase: HTMLMetadataDatabase
	let htmlMetadataDownloader: HTMLMetadataDownloader
	let imageMetadataDatabase: ImageMetadataDatabase
	let imageDownloader: ImageDownloader
	let faviconDownloader: FaviconDownloader
	let feedIconDownloader: FeedIconDownloader
	let authorAvatarDownloader: AuthorAvatarDownloader
	let faviconGenerator: FaviconGenerator
	let accountManager: AccountManager
	let appDefaults: AppDefaults
	let articleStringFormatter: ArticleStringFormatter
	let smartFeedsController: SmartFeedsController
	let iconImageCache: IconImageCache
	let articleThemesManager: ArticleThemesManager
	let articleThemeDownloader: ArticleThemeDownloader
	let articleStatusSyncTimer: ArticleStatusSyncTimer
	let extensionFeedAddRequestFile: ExtensionFeedAddRequestFile
	let extensionContainersFile: ExtensionContainersFile
	let widgetDataEncoder: WidgetDataEncoder?
	let userNotificationManager: UserNotificationManager
	let webViewFullscreenKeeper: WebViewFullscreenKeeper

	/// One session per account, keyed by account ID.
	var sessions: [String: SessionDependencies] {
		sessionStore.sessions
	}

	private let sessionStore: SessionStore
	private let accountDeletionObserver: NSObjectProtocol

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
		appDefaults = AppDefaults()
		articleStringFormatter = ArticleStringFormatter()

		// Root accessors for code with no injection point (listed in the app README).
		// Set before AccountManager reads accounts, since loading articles can reach them.
		AuthorCache.current = authorCache
		FaviconDownloader.current = faviconDownloader
		FaviconGenerator.current = faviconGenerator
		AppDefaults.current = appDefaults
		ArticleStringFormatter.current = articleStringFormatter

		// AccountManager.init calls the factory for every account it reads from disk,
		// so the factory captures only what exists at that point.
		let sessionStore = SessionStore()
		self.sessionStore = sessionStore
		let (activityLog, batchUpdate, networkMonitor, feedFinder) = (activityLog, batchUpdate, networkMonitor, feedFinder)
		accountManager = AccountManager(networkMonitor: networkMonitor) { dataFolder, type, accountID in
			let session = SessionDependencies(dataFolder: dataFolder, type: type, accountID: accountID, activityLog: activityLog, batchUpdate: batchUpdate, networkMonitor: networkMonitor, feedFinder: feedFinder)
			sessionStore.sessions[accountID] = session
			return session.account
		}
		AccountManager.current = accountManager
		// AccountManager drops duplicate service accounts it read from disk; drop their sessions too.
		let accountManager = accountManager
		sessionStore.sessions = sessionStore.sessions.filter { accountManager.existingAccount(accountID: $0.key) != nil }
		accountDeletionObserver = NotificationCenter.default.addObserver(forName: .UserDidDeleteAccount, object: nil, queue: .main) { note in
			guard let account = note.userInfo?[Account.UserInfoKey.account] as? Account else {
				return
			}
			let accountID = account.accountID
			MainActor.assumeIsolated {
				sessionStore.sessions[accountID] = nil
			}
		}

		smartFeedsController = SmartFeedsController(accountManager: accountManager)
		iconImageCache = IconImageCache(feedIconDownloader: feedIconDownloader, faviconDownloader: faviconDownloader, authorAvatarDownloader: authorAvatarDownloader, accountManager: accountManager, smartFeedsController: smartFeedsController)
		IconImageCache.current = iconImageCache
		articleThemesManager = ArticleThemesManager(appDefaults: appDefaults)
		articleThemeDownloader = ArticleThemeDownloader(downloader: downloader)
		articleStatusSyncTimer = ArticleStatusSyncTimer(accountManager: accountManager)
		extensionFeedAddRequestFile = ExtensionFeedAddRequestFile(accountManager: accountManager)
		extensionContainersFile = ExtensionContainersFile(accountManager: accountManager)
		widgetDataEncoder = WidgetDataEncoder(appDefaults: appDefaults, articleStringFormatter: articleStringFormatter, smartFeedsController: smartFeedsController, accountManager: accountManager)
		userNotificationManager = UserNotificationManager(articleStringFormatter: articleStringFormatter)
		webViewFullscreenKeeper = WebViewFullscreenKeeper()
	}
}

extension AppDependencies {

	/// A session built from this root's services but not registered with AccountManager (bench scope checks).
	func makeSession(dataFolder: String, type: AccountType, accountID: String) -> SessionDependencies {
		SessionDependencies(dataFolder: dataFolder, type: type, accountID: accountID, activityLog: activityLog, batchUpdate: batchUpdate, networkMonitor: networkMonitor, feedFinder: feedFinder)
	}
}

@MainActor private final class SessionStore {
	var sessions = [String: SessionDependencies]()
}
