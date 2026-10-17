//
//  AppComponent.swift lives in this file with AppDependencies.
//  NetNewsWire-iOS
//
//  The app scope as a Needle bootstrap component; session and timeline scopes are child
//  components (SessionComponent, TimelineComponent) created with `XComponent(parent: self)`.
//  NeedleFoundation is Swift-5-mode without actor support: components are nonisolated, main-actor
//  services are built inside `MainActor.assumeIsolated`, and dependency reads are hoisted out of
//  the `shared` closures.
//

import Foundation
import NeedleFoundation
import RSCore
import RSWeb
import ActivityLog
import FeedFinder
import Account
import Articles
import HTMLMetadata
import Images

nonisolated final class AppComponent: BootstrapComponent {

	let sessionStore = SessionStore()

	public var batchUpdate: BatchUpdate { shared { MainActor.assumeIsolated { BatchUpdate() } } }
	public var mainThreadOperationQueue: MainThreadOperationQueue { shared { MainActor.assumeIsolated { MainThreadOperationQueue() } } }
	public var downloadCache: DownloadCache { shared { DownloadCache() } }
	public var downloader: Downloader {
		let downloadCache = downloadCache
		return shared { MainActor.assumeIsolated { Downloader(cache: downloadCache) } }
	}
	public var networkMonitor: NetworkMonitor { shared { NetworkMonitor() } }
	public var activityLog: ActivityLog { shared { MainActor.assumeIsolated { ActivityLog() } } }
	public var feedFinder: FeedFinder {
		let downloader = downloader
		let activityLog = activityLog
		return shared { FeedFinder(downloader: downloader, activityLog: activityLog) }
	}
	public var authorCache: AuthorCache { shared { AuthorCache() } }
	public var htmlMetadataDatabase: HTMLMetadataDatabase { shared { HTMLMetadataDatabase(databasePath: MainActor.assumeIsolated { HTMLMetadataDatabase.defaultDatabasePath }) } }
	public var htmlMetadataDownloader: HTMLMetadataDownloader {
		let downloader = downloader
		let activityLog = activityLog
		let htmlMetadataDatabase = htmlMetadataDatabase
		return shared { HTMLMetadataDownloader(downloader: downloader, activityLog: activityLog, database: htmlMetadataDatabase) }
	}
	public var imageMetadataDatabase: ImageMetadataDatabase { shared { MainActor.assumeIsolated { ImageMetadataDatabase() } } }
	public var imageDownloader: ImageDownloader {
		let downloader = downloader
		let activityLog = activityLog
		let imageMetadataDatabase = imageMetadataDatabase
		return shared { MainActor.assumeIsolated { ImageDownloader(downloader: downloader, activityLog: activityLog, imageMetadataDatabase: imageMetadataDatabase) } }
	}
	public var faviconDownloader: FaviconDownloader {
		let downloader = downloader
		let activityLog = activityLog
		let imageMetadataDatabase = imageMetadataDatabase
		let htmlMetadataDownloader = htmlMetadataDownloader
		return shared { MainActor.assumeIsolated { FaviconDownloader(downloader: downloader, activityLog: activityLog, imageMetadataDatabase: imageMetadataDatabase, htmlMetadataDownloader: htmlMetadataDownloader) } }
	}
	public var feedIconDownloader: FeedIconDownloader {
		let imageDownloader = imageDownloader
		let imageMetadataDatabase = imageMetadataDatabase
		let htmlMetadataDownloader = htmlMetadataDownloader
		return shared { MainActor.assumeIsolated { FeedIconDownloader(imageDownloader: imageDownloader, imageMetadataDatabase: imageMetadataDatabase, htmlMetadataDownloader: htmlMetadataDownloader) } }
	}
	public var authorAvatarDownloader: AuthorAvatarDownloader {
		let imageDownloader = imageDownloader
		return shared { MainActor.assumeIsolated { AuthorAvatarDownloader(imageDownloader: imageDownloader) } }
	}
	public var faviconGenerator: FaviconGenerator { shared { MainActor.assumeIsolated { FaviconGenerator() } } }
	public var appDefaults: AppDefaults { shared { AppDefaults() } }
	public var articleStringFormatter: ArticleStringFormatter { shared { MainActor.assumeIsolated { ArticleStringFormatter() } } }
	public var accountManager: AccountManager {
		let networkMonitor = networkMonitor
		let sessionStore = sessionStore
		nonisolated(unsafe) let component = self
		return shared {
			MainActor.assumeIsolated {
				AccountManager(networkMonitor: networkMonitor) { dataFolder, type, accountID in
					let session = SessionDependencies(component: component.makeSessionComponent(dataFolder: dataFolder, type: type, accountID: accountID))
					sessionStore.sessions[accountID] = session
					return session.account
				}
			}
		}
	}

	/// Session scope: a child component per account.
	func makeSessionComponent(dataFolder: String, type: AccountType, accountID: String) -> SessionComponent {
		SessionComponent(parent: self, dataFolder: dataFolder, type: type, accountID: accountID)
	}
	public var smartFeedsController: SmartFeedsController {
		let accountManager = accountManager
		return shared { MainActor.assumeIsolated { SmartFeedsController(accountManager: accountManager) } }
	}
	public var iconImageCache: IconImageCache {
		let feedIconDownloader = feedIconDownloader
		let faviconDownloader = faviconDownloader
		let authorAvatarDownloader = authorAvatarDownloader
		let accountManager = accountManager
		let smartFeedsController = smartFeedsController
		return shared { MainActor.assumeIsolated { IconImageCache(feedIconDownloader: feedIconDownloader, faviconDownloader: faviconDownloader, authorAvatarDownloader: authorAvatarDownloader, accountManager: accountManager, smartFeedsController: smartFeedsController) } }
	}
	public var articleThemesManager: ArticleThemesManager {
		let appDefaults = appDefaults
		return shared { ArticleThemesManager(appDefaults: appDefaults) }
	}
	public var articleThemeDownloader: ArticleThemeDownloader {
		let downloader = downloader
		return shared { ArticleThemeDownloader(downloader: downloader) }
	}
	public var articleStatusSyncTimer: ArticleStatusSyncTimer {
		let accountManager = accountManager
		return shared { MainActor.assumeIsolated { ArticleStatusSyncTimer(accountManager: accountManager) } }
	}
	public var extensionFeedAddRequestFile: ExtensionFeedAddRequestFile {
		let accountManager = accountManager
		return shared { ExtensionFeedAddRequestFile(accountManager: accountManager) }
	}
	public var extensionContainersFile: ExtensionContainersFile {
		let accountManager = accountManager
		return shared { MainActor.assumeIsolated { ExtensionContainersFile(accountManager: accountManager) } }
	}
	public var widgetDataEncoder: WidgetDataEncoder? {
		let appDefaults = appDefaults
		let articleStringFormatter = articleStringFormatter
		let smartFeedsController = smartFeedsController
		let accountManager = accountManager
		return shared { MainActor.assumeIsolated { WidgetDataEncoder(appDefaults: appDefaults, articleStringFormatter: articleStringFormatter, smartFeedsController: smartFeedsController, accountManager: accountManager) } }
	}
	public var userNotificationManager: UserNotificationManager {
		let articleStringFormatter = articleStringFormatter
		return shared { MainActor.assumeIsolated { UserNotificationManager(articleStringFormatter: articleStringFormatter) } }
	}
	public var webViewFullscreenKeeper: WebViewFullscreenKeeper { shared { MainActor.assumeIsolated { WebViewFullscreenKeeper() } } }
}

/// The app root the rest of the app holds; same shape as the manual variant. Every service is
/// resolved from the component once, here, so lifetimes match the other variants.
@MainActor final class AppDependencies {

	let component: AppComponent

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

	/// One session per account, keyed by account ID.
	var sessions: [String: SessionDependencies] {
		component.sessionStore.sessions
	}

	private let accountDeletionObserver: NSObjectProtocol

	init() {
		registerProviderFactories()
		let c = AppComponent()
		component = c
		batchUpdate = c.batchUpdate
		mainThreadOperationQueue = c.mainThreadOperationQueue
		downloadCache = c.downloadCache
		downloader = c.downloader
		networkMonitor = c.networkMonitor
		activityLog = c.activityLog
		feedFinder = c.feedFinder
		authorCache = c.authorCache
		htmlMetadataDatabase = c.htmlMetadataDatabase
		htmlMetadataDownloader = c.htmlMetadataDownloader
		imageMetadataDatabase = c.imageMetadataDatabase
		imageDownloader = c.imageDownloader
		faviconDownloader = c.faviconDownloader
		feedIconDownloader = c.feedIconDownloader
		authorAvatarDownloader = c.authorAvatarDownloader
		faviconGenerator = c.faviconGenerator
		appDefaults = c.appDefaults
		articleStringFormatter = c.articleStringFormatter

		// Root accessors for code with no injection point (listed in the app README).
		// Set before AccountManager reads accounts, since loading articles can reach them.
		AuthorCache.current = authorCache
		FaviconDownloader.current = faviconDownloader
		FaviconGenerator.current = faviconGenerator
		AppDefaults.current = appDefaults
		ArticleStringFormatter.current = articleStringFormatter

		accountManager = c.accountManager
		AccountManager.current = accountManager
		// AccountManager drops duplicate service accounts it read from disk; drop their sessions too.
		let accountManager = accountManager
		let sessionStore = c.sessionStore
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
		smartFeedsController = c.smartFeedsController
		iconImageCache = c.iconImageCache
		articleThemesManager = c.articleThemesManager
		articleThemeDownloader = c.articleThemeDownloader
		articleStatusSyncTimer = c.articleStatusSyncTimer
		extensionFeedAddRequestFile = c.extensionFeedAddRequestFile
		extensionContainersFile = c.extensionContainersFile
		widgetDataEncoder = c.widgetDataEncoder
		userNotificationManager = c.userNotificationManager
		webViewFullscreenKeeper = c.webViewFullscreenKeeper

		IconImageCache.current = iconImageCache
	}
}

extension AppDependencies {

	/// A session built from this root's component but not registered with AccountManager (bench scope checks).
	func makeSession(dataFolder: String, type: AccountType, accountID: String) -> SessionDependencies {
		SessionDependencies(component: component.makeSessionComponent(dataFolder: dataFolder, type: type, accountID: accountID))
	}
}

@MainActor final class SessionStore {
	var sessions = [String: SessionDependencies]()
}
