//
//  AppDependencies.swift
//  NetNewsWire-iOS
//
//  The app-scope composition root: app services registered once in a Swinject container.
//  Session and feature scopes are child containers (SessionDependencies, FeatureDependencies).
//

import Foundation
import Swinject
import RSCore
import RSWeb
import ActivityLog
import FeedFinder
import Account
import Articles
import HTMLMetadata
import Images

/// Swinject factories are nonisolated; every resolution here happens on the main thread.
func onMain<T: Sendable>(_ body: @MainActor () -> T) -> T {
	MainActor.assumeIsolated(body)
}

@MainActor final class AppDependencies {

	let container = Swinject.Container()

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
	let appDefaults: AppDefaults
	let articleStringFormatter: ArticleStringFormatter
	let accountManager: AccountManager
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
	let synth: SynthServices

	/// One session per account, keyed by account ID.
	var sessions: [String: SessionDependencies] {
		sessionStore.sessions
	}

	private let sessionStore: SessionStore
	private let accountDeletionObserver: NSObjectProtocol

	init() {
		let c = container
		c.register(BatchUpdate.self) { _ in onMain { BatchUpdate() } }.inObjectScope(.container)
		c.register(MainThreadOperationQueue.self) { _ in onMain { MainThreadOperationQueue() } }.inObjectScope(.container)
		c.register(DownloadCache.self) { _ in DownloadCache() }.inObjectScope(.container)
		c.register(Downloader.self) { r in let cache = r.resolve(DownloadCache.self)!; return onMain { Downloader(cache: cache) } }.inObjectScope(.container)
		c.register(NetworkMonitor.self) { _ in NetworkMonitor() }.inObjectScope(.container)
		c.register(ActivityLog.self) { _ in onMain { ActivityLog() } }.inObjectScope(.container)
		c.register(FeedFinder.self) { r in FeedFinder(downloader: r.resolve(Downloader.self)!, activityLog: r.resolve(ActivityLog.self)!) }.inObjectScope(.container)
		c.register(AuthorCache.self) { _ in AuthorCache() }.inObjectScope(.container)
		c.register(HTMLMetadataDatabase.self) { _ in HTMLMetadataDatabase(databasePath: onMain { HTMLMetadataDatabase.defaultDatabasePath }) }.inObjectScope(.container)
		c.register(HTMLMetadataDownloader.self) { r in HTMLMetadataDownloader(downloader: r.resolve(Downloader.self)!, activityLog: r.resolve(ActivityLog.self)!, database: r.resolve(HTMLMetadataDatabase.self)!) }.inObjectScope(.container)
		c.register(ImageMetadataDatabase.self) { _ in onMain { ImageMetadataDatabase() } }.inObjectScope(.container)
		c.register(ImageDownloader.self) { r in
			let (downloader, activityLog, database) = (r.resolve(Downloader.self)!, r.resolve(ActivityLog.self)!, r.resolve(ImageMetadataDatabase.self)!)
			return onMain { ImageDownloader(downloader: downloader, activityLog: activityLog, imageMetadataDatabase: database) }
		}.inObjectScope(.container)
		c.register(FaviconDownloader.self) { r in
			let (downloader, activityLog, database, html) = (r.resolve(Downloader.self)!, r.resolve(ActivityLog.self)!, r.resolve(ImageMetadataDatabase.self)!, r.resolve(HTMLMetadataDownloader.self)!)
			return onMain { FaviconDownloader(downloader: downloader, activityLog: activityLog, imageMetadataDatabase: database, htmlMetadataDownloader: html) }
		}.inObjectScope(.container)
		c.register(FeedIconDownloader.self) { r in
			let (images, database, html) = (r.resolve(ImageDownloader.self)!, r.resolve(ImageMetadataDatabase.self)!, r.resolve(HTMLMetadataDownloader.self)!)
			return onMain { FeedIconDownloader(imageDownloader: images, imageMetadataDatabase: database, htmlMetadataDownloader: html) }
		}.inObjectScope(.container)
		c.register(AuthorAvatarDownloader.self) { r in let images = r.resolve(ImageDownloader.self)!; return onMain { AuthorAvatarDownloader(imageDownloader: images) } }.inObjectScope(.container)
		c.register(FaviconGenerator.self) { _ in onMain { FaviconGenerator() } }.inObjectScope(.container)
		c.register(AppDefaults.self) { _ in AppDefaults() }.inObjectScope(.container)
		c.register(ArticleStringFormatter.self) { _ in onMain { ArticleStringFormatter() } }.inObjectScope(.container)

		// AccountManager.init calls the factory for every account it reads from disk,
		// so the factory captures only the store and the app container.
		let sessionStore = SessionStore()
		self.sessionStore = sessionStore
		c.register(AccountManager.self) { r in
			let networkMonitor = r.resolve(NetworkMonitor.self)!
			return onMain {
				AccountManager(networkMonitor: networkMonitor) { dataFolder, type, accountID in
					let session = SessionDependencies(parent: c, dataFolder: dataFolder, type: type, accountID: accountID)
					sessionStore.sessions[accountID] = session
					return session.account
				}
			}
		}.inObjectScope(.container)
		c.register(SmartFeedsController.self) { r in let am = r.resolve(AccountManager.self)!; return onMain { SmartFeedsController(accountManager: am) } }.inObjectScope(.container)
		c.register(IconImageCache.self) { r in
			let (feedIcons, favicons, avatars, am, smart) = (r.resolve(FeedIconDownloader.self)!, r.resolve(FaviconDownloader.self)!, r.resolve(AuthorAvatarDownloader.self)!, r.resolve(AccountManager.self)!, r.resolve(SmartFeedsController.self)!)
			return onMain { IconImageCache(feedIconDownloader: feedIcons, faviconDownloader: favicons, authorAvatarDownloader: avatars, accountManager: am, smartFeedsController: smart) }
		}.inObjectScope(.container)
		c.register(ArticleThemesManager.self) { r in ArticleThemesManager(appDefaults: r.resolve(AppDefaults.self)!) }.inObjectScope(.container)
		c.register(ArticleThemeDownloader.self) { r in ArticleThemeDownloader(downloader: r.resolve(Downloader.self)!) }.inObjectScope(.container)
		c.register(ArticleStatusSyncTimer.self) { r in let am = r.resolve(AccountManager.self)!; return onMain { ArticleStatusSyncTimer(accountManager: am) } }.inObjectScope(.container)
		c.register(ExtensionFeedAddRequestFile.self) { r in ExtensionFeedAddRequestFile(accountManager: r.resolve(AccountManager.self)!) }.inObjectScope(.container)
		c.register(ExtensionContainersFile.self) { r in let am = r.resolve(AccountManager.self)!; return onMain { ExtensionContainersFile(accountManager: am) } }.inObjectScope(.container)
		c.register(WidgetDataEncoder?.self) { r in
			let (defaults, formatter, smart, am) = (r.resolve(AppDefaults.self)!, r.resolve(ArticleStringFormatter.self)!, r.resolve(SmartFeedsController.self)!, r.resolve(AccountManager.self)!)
			return onMain { WidgetDataEncoder(appDefaults: defaults, articleStringFormatter: formatter, smartFeedsController: smart, accountManager: am) }
		}.inObjectScope(.container)
		c.register(UserNotificationManager.self) { r in let formatter = r.resolve(ArticleStringFormatter.self)!; return onMain { UserNotificationManager(articleStringFormatter: formatter) } }.inObjectScope(.container)
		c.register(WebViewFullscreenKeeper.self) { _ in onMain { WebViewFullscreenKeeper() } }.inObjectScope(.container)

		batchUpdate = c.resolve(BatchUpdate.self)!
		mainThreadOperationQueue = c.resolve(MainThreadOperationQueue.self)!
		downloadCache = c.resolve(DownloadCache.self)!
		downloader = c.resolve(Downloader.self)!
		networkMonitor = c.resolve(NetworkMonitor.self)!
		activityLog = c.resolve(ActivityLog.self)!
		feedFinder = c.resolve(FeedFinder.self)!
		authorCache = c.resolve(AuthorCache.self)!
		htmlMetadataDatabase = c.resolve(HTMLMetadataDatabase.self)!
		htmlMetadataDownloader = c.resolve(HTMLMetadataDownloader.self)!
		imageMetadataDatabase = c.resolve(ImageMetadataDatabase.self)!
		imageDownloader = c.resolve(ImageDownloader.self)!
		faviconDownloader = c.resolve(FaviconDownloader.self)!
		feedIconDownloader = c.resolve(FeedIconDownloader.self)!
		authorAvatarDownloader = c.resolve(AuthorAvatarDownloader.self)!
		faviconGenerator = c.resolve(FaviconGenerator.self)!
		appDefaults = c.resolve(AppDefaults.self)!
		articleStringFormatter = c.resolve(ArticleStringFormatter.self)!

		// Root accessors for code with no injection point (listed in the app README).
		// Set before AccountManager reads accounts, since loading articles can reach them.
		AuthorCache.current = authorCache
		FaviconDownloader.current = faviconDownloader
		FaviconGenerator.current = faviconGenerator
		AppDefaults.current = appDefaults
		ArticleStringFormatter.current = articleStringFormatter

		accountManager = c.resolve(AccountManager.self)!
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

		smartFeedsController = c.resolve(SmartFeedsController.self)!
		iconImageCache = c.resolve(IconImageCache.self)!
		IconImageCache.current = iconImageCache
		articleThemesManager = c.resolve(ArticleThemesManager.self)!
		articleThemeDownloader = c.resolve(ArticleThemeDownloader.self)!
		articleStatusSyncTimer = c.resolve(ArticleStatusSyncTimer.self)!
		extensionFeedAddRequestFile = c.resolve(ExtensionFeedAddRequestFile.self)!
		extensionContainersFile = c.resolve(ExtensionContainersFile.self)!
		widgetDataEncoder = c.resolve(WidgetDataEncoder?.self)!
		userNotificationManager = c.resolve(UserNotificationManager.self)!
		webViewFullscreenKeeper = c.resolve(WebViewFullscreenKeeper.self)!
		registerSynth(c)
		synth = SynthServices(container: c)
	}
}

extension AppDependencies {

	/// A session built from this root's container but not registered with AccountManager (bench scope checks).
	func makeSession(dataFolder: String, type: AccountType, accountID: String) -> SessionDependencies {
		SessionDependencies(parent: container, dataFolder: dataFolder, type: type, accountID: accountID)
	}
}

@MainActor private final class SessionStore {
	var sessions = [String: SessionDependencies]()
}
