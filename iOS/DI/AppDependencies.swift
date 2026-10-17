//
//  AppDependencies.swift
//  NetNewsWire-iOS
//
//  The app scope as a SafeDI root. Every service is made @Instantiable by an extension below
//  (SafeDI's documented route for types declared elsewhere), so no package depends on SafeDI and
//  the plugin scans only the app target. Sessions and timelines are created through
//  Instantiators that forward their runtime values.
//

import Foundation
import SafeDI
import RSCore
import RSWeb
import ActivityLog
import FeedFinder
import Account
import Articles
import HTMLMetadata
import Images

@Instantiable(isRoot: true)
@MainActor public final class AppRoot: Instantiable {
	@Instantiated public let batchUpdate: BatchUpdate
	@Instantiated public let mainThreadOperationQueue: MainThreadOperationQueue
	@Instantiated public let downloadCache: DownloadCache
	@Instantiated public let downloader: Downloader
	@Instantiated public let networkMonitor: NetworkMonitor
	@Instantiated public let activityLog: ActivityLog
	@Instantiated public let feedFinder: FeedFinder
	@Instantiated public let authorCache: AuthorCache
	@Instantiated public let htmlMetadataDatabase: HTMLMetadataDatabase
	@Instantiated public let htmlMetadataDownloader: HTMLMetadataDownloader
	@Instantiated public let imageMetadataDatabase: ImageMetadataDatabase
	@Instantiated public let imageDownloader: ImageDownloader
	@Instantiated public let faviconDownloader: FaviconDownloader
	@Instantiated public let feedIconDownloader: FeedIconDownloader
	@Instantiated public let authorAvatarDownloader: AuthorAvatarDownloader
	@Instantiated public let faviconGenerator: FaviconGenerator
	@Instantiated public let appDefaults: AppDefaults
	@Instantiated public let articleStringFormatter: ArticleStringFormatter
	@Instantiated public let sessionStore: SessionStore
	@Instantiated public let accountManager: AccountManager
	@Instantiated public let smartFeedsController: SmartFeedsController
	@Instantiated public let iconImageCache: IconImageCache
	@Instantiated public let articleThemesManager: ArticleThemesManager
	@Instantiated public let articleThemeDownloader: ArticleThemeDownloader
	@Instantiated public let articleStatusSyncTimer: ArticleStatusSyncTimer
	@Instantiated public let extensionFeedAddRequestFile: ExtensionFeedAddRequestFile
	@Instantiated public let extensionContainersFile: ExtensionContainersFile
	@Instantiated public let widgetDataEncoder: WidgetDataEncoderBox
	@Instantiated public let userNotificationManager: UserNotificationManager
	@Instantiated public let webViewFullscreenKeeper: WebViewFullscreenKeeper
	@Instantiated public let sessionInstantiator: Instantiator<SessionDependencies>

	public init(
		batchUpdate: BatchUpdate,
		mainThreadOperationQueue: MainThreadOperationQueue,
		downloadCache: DownloadCache,
		downloader: Downloader,
		networkMonitor: NetworkMonitor,
		activityLog: ActivityLog,
		feedFinder: FeedFinder,
		authorCache: AuthorCache,
		htmlMetadataDatabase: HTMLMetadataDatabase,
		htmlMetadataDownloader: HTMLMetadataDownloader,
		imageMetadataDatabase: ImageMetadataDatabase,
		imageDownloader: ImageDownloader,
		faviconDownloader: FaviconDownloader,
		feedIconDownloader: FeedIconDownloader,
		authorAvatarDownloader: AuthorAvatarDownloader,
		faviconGenerator: FaviconGenerator,
		appDefaults: AppDefaults,
		articleStringFormatter: ArticleStringFormatter,
		sessionStore: SessionStore,
		accountManager: AccountManager,
		smartFeedsController: SmartFeedsController,
		iconImageCache: IconImageCache,
		articleThemesManager: ArticleThemesManager,
		articleThemeDownloader: ArticleThemeDownloader,
		articleStatusSyncTimer: ArticleStatusSyncTimer,
		extensionFeedAddRequestFile: ExtensionFeedAddRequestFile,
		extensionContainersFile: ExtensionContainersFile,
		widgetDataEncoder: WidgetDataEncoderBox,
		userNotificationManager: UserNotificationManager,
		webViewFullscreenKeeper: WebViewFullscreenKeeper,
		sessionInstantiator: Instantiator<SessionDependencies>
	) {
		self.batchUpdate = batchUpdate
		self.mainThreadOperationQueue = mainThreadOperationQueue
		self.downloadCache = downloadCache
		self.downloader = downloader
		self.networkMonitor = networkMonitor
		self.activityLog = activityLog
		self.feedFinder = feedFinder
		self.authorCache = authorCache
		self.htmlMetadataDatabase = htmlMetadataDatabase
		self.htmlMetadataDownloader = htmlMetadataDownloader
		self.imageMetadataDatabase = imageMetadataDatabase
		self.imageDownloader = imageDownloader
		self.faviconDownloader = faviconDownloader
		self.feedIconDownloader = feedIconDownloader
		self.authorAvatarDownloader = authorAvatarDownloader
		self.faviconGenerator = faviconGenerator
		self.appDefaults = appDefaults
		self.articleStringFormatter = articleStringFormatter
		self.sessionStore = sessionStore
		self.accountManager = accountManager
		self.smartFeedsController = smartFeedsController
		self.iconImageCache = iconImageCache
		self.articleThemesManager = articleThemesManager
		self.articleThemeDownloader = articleThemeDownloader
		self.articleStatusSyncTimer = articleStatusSyncTimer
		self.extensionFeedAddRequestFile = extensionFeedAddRequestFile
		self.extensionContainersFile = extensionContainersFile
		self.widgetDataEncoder = widgetDataEncoder
		self.userNotificationManager = userNotificationManager
		self.webViewFullscreenKeeper = webViewFullscreenKeeper
		self.sessionInstantiator = sessionInstantiator
	}
}

/// The app root the rest of the app holds; same shape as the manual variant.
@MainActor final class AppDependencies {

	let root: AppRoot
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
		root.sessionStore.sessions
	}

	private let accountDeletionObserver: NSObjectProtocol

	public init() {
		let root = AppRoot()
		self.root = root
		batchUpdate = root.batchUpdate
		mainThreadOperationQueue = root.mainThreadOperationQueue
		downloadCache = root.downloadCache
		downloader = root.downloader
		networkMonitor = root.networkMonitor
		activityLog = root.activityLog
		feedFinder = root.feedFinder
		authorCache = root.authorCache
		htmlMetadataDatabase = root.htmlMetadataDatabase
		htmlMetadataDownloader = root.htmlMetadataDownloader
		imageMetadataDatabase = root.imageMetadataDatabase
		imageDownloader = root.imageDownloader
		faviconDownloader = root.faviconDownloader
		feedIconDownloader = root.feedIconDownloader
		authorAvatarDownloader = root.authorAvatarDownloader
		faviconGenerator = root.faviconGenerator
		appDefaults = root.appDefaults
		articleStringFormatter = root.articleStringFormatter
		accountManager = root.accountManager
		smartFeedsController = root.smartFeedsController
		iconImageCache = root.iconImageCache
		articleThemesManager = root.articleThemesManager
		articleThemeDownloader = root.articleThemeDownloader
		articleStatusSyncTimer = root.articleStatusSyncTimer
		extensionFeedAddRequestFile = root.extensionFeedAddRequestFile
		extensionContainersFile = root.extensionContainersFile
		widgetDataEncoder = root.widgetDataEncoder.encoder
		userNotificationManager = root.userNotificationManager
		webViewFullscreenKeeper = root.webViewFullscreenKeeper

		// Root accessors for code with no injection point (listed in the app README).
		// SafeDI's generated init builds the whole tree at once, so these are set after
		// AccountManager read the accounts; every read of them happens later.
		AuthorCache.current = authorCache
		FaviconDownloader.current = faviconDownloader
		FaviconGenerator.current = faviconGenerator
		AppDefaults.current = appDefaults
		ArticleStringFormatter.current = articleStringFormatter
		AccountManager.current = accountManager
		IconImageCache.current = iconImageCache

		// AccountManager drops duplicate service accounts it read from disk; drop their sessions too.
		let accountManager = accountManager
		let sessionStore = root.sessionStore
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
	}
}

extension AppDependencies {

	/// A session built from this root's tree but not registered with AccountManager (bench scope checks).
	func makeSession(dataFolder: String, type: AccountType, accountID: String) -> SessionDependencies {
		root.sessionInstantiator.instantiate((accountID: accountID, dataFolder: dataFolder, type: type))
	}
}

@Instantiable
@MainActor public final class SessionStore: Instantiable {
	public var sessions = [String: SessionDependencies]()

	public init() {}
}

/// SafeDI instantiates concrete types; the encoder's initialiser is failable (no app group).
@MainActor public final class WidgetDataEncoderBox {
	public let encoder: WidgetDataEncoder?

	public init(encoder: WidgetDataEncoder?) {
		self.encoder = encoder
	}
}

@Instantiable
extension WidgetDataEncoderBox: Instantiable {
	public static func instantiate(appDefaults: AppDefaults, articleStringFormatter: ArticleStringFormatter, smartFeedsController: SmartFeedsController, accountManager: AccountManager) -> WidgetDataEncoderBox {
		WidgetDataEncoderBox(encoder: WidgetDataEncoder(appDefaults: appDefaults, articleStringFormatter: articleStringFormatter, smartFeedsController: smartFeedsController, accountManager: accountManager))
	}
}

@Instantiable
extension BatchUpdate: @retroactive Instantiable {
	public static func instantiate() -> BatchUpdate {
		BatchUpdate()
	}
}

@Instantiable
extension MainThreadOperationQueue: @retroactive Instantiable {
	public static func instantiate() -> MainThreadOperationQueue {
		MainThreadOperationQueue()
	}
}

@Instantiable
extension DownloadCache: @retroactive Instantiable {
	public static func instantiate() -> DownloadCache {
		DownloadCache()
	}
}

@Instantiable
extension Downloader: @retroactive Instantiable {
	public static func instantiate(downloadCache: DownloadCache) -> Downloader {
		Downloader(cache: downloadCache)
	}
}

@Instantiable
extension NetworkMonitor: @retroactive Instantiable {
	public static func instantiate() -> NetworkMonitor {
		NetworkMonitor()
	}
}

@Instantiable
extension ActivityLog: @retroactive Instantiable {
	public static func instantiate() -> ActivityLog {
		ActivityLog()
	}
}

@Instantiable
extension FeedFinder: @retroactive Instantiable {
	public static func instantiate(downloader: Downloader, activityLog: ActivityLog) -> FeedFinder {
		FeedFinder(downloader: downloader, activityLog: activityLog)
	}
}

@Instantiable
extension AuthorCache: @retroactive Instantiable {
	public static func instantiate() -> AuthorCache {
		AuthorCache()
	}
}

@Instantiable
extension HTMLMetadataDatabase: @retroactive Instantiable {
	@MainActor public static func instantiate() -> HTMLMetadataDatabase {
		HTMLMetadataDatabase(databasePath: HTMLMetadataDatabase.defaultDatabasePath)
	}
}

@Instantiable
extension HTMLMetadataDownloader: @retroactive Instantiable {
	public static func instantiate(downloader: Downloader, activityLog: ActivityLog, htmlMetadataDatabase: HTMLMetadataDatabase) -> HTMLMetadataDownloader {
		HTMLMetadataDownloader(downloader: downloader, activityLog: activityLog, database: htmlMetadataDatabase)
	}
}

@Instantiable
extension ImageMetadataDatabase: @retroactive Instantiable {
	public static func instantiate() -> ImageMetadataDatabase {
		ImageMetadataDatabase()
	}
}

@Instantiable
extension ImageDownloader: @retroactive Instantiable {
	public static func instantiate(downloader: Downloader, activityLog: ActivityLog, imageMetadataDatabase: ImageMetadataDatabase) -> ImageDownloader {
		ImageDownloader(downloader: downloader, activityLog: activityLog, imageMetadataDatabase: imageMetadataDatabase)
	}
}

@Instantiable
extension FaviconDownloader: @retroactive Instantiable {
	public static func instantiate(downloader: Downloader, activityLog: ActivityLog, imageMetadataDatabase: ImageMetadataDatabase, htmlMetadataDownloader: HTMLMetadataDownloader) -> FaviconDownloader {
		FaviconDownloader(downloader: downloader, activityLog: activityLog, imageMetadataDatabase: imageMetadataDatabase, htmlMetadataDownloader: htmlMetadataDownloader)
	}
}

@Instantiable
extension FeedIconDownloader: @retroactive Instantiable {
	public static func instantiate(imageDownloader: ImageDownloader, imageMetadataDatabase: ImageMetadataDatabase, htmlMetadataDownloader: HTMLMetadataDownloader) -> FeedIconDownloader {
		FeedIconDownloader(imageDownloader: imageDownloader, imageMetadataDatabase: imageMetadataDatabase, htmlMetadataDownloader: htmlMetadataDownloader)
	}
}

@Instantiable
extension AuthorAvatarDownloader: @retroactive Instantiable {
	public static func instantiate(imageDownloader: ImageDownloader) -> AuthorAvatarDownloader {
		AuthorAvatarDownloader(imageDownloader: imageDownloader)
	}
}

@Instantiable
extension FaviconGenerator: @retroactive Instantiable {
	public static func instantiate() -> FaviconGenerator {
		FaviconGenerator()
	}
}

@Instantiable
extension AppDefaults: Instantiable {
	public static func instantiate() -> AppDefaults {
		AppDefaults()
	}
}

@Instantiable
extension ArticleStringFormatter: Instantiable {
	public static func instantiate() -> ArticleStringFormatter {
		ArticleStringFormatter()
	}
}

@Instantiable
extension AccountManager: @retroactive Instantiable {
	public static func instantiate(networkMonitor: NetworkMonitor, sessionStore: SessionStore, sessionInstantiator: Instantiator<SessionDependencies>) -> AccountManager {
		AccountManager(networkMonitor: networkMonitor) { dataFolder, type, accountID in
			let session = sessionInstantiator.instantiate((accountID: accountID, dataFolder: dataFolder, type: type))
			sessionStore.sessions[accountID] = session
			return session.account
		}
	}
}

@Instantiable
extension SmartFeedsController: Instantiable {
	public static func instantiate(accountManager: AccountManager) -> SmartFeedsController {
		SmartFeedsController(accountManager: accountManager)
	}
}

@Instantiable
extension IconImageCache: Instantiable {
	public static func instantiate(feedIconDownloader: FeedIconDownloader, faviconDownloader: FaviconDownloader, authorAvatarDownloader: AuthorAvatarDownloader, accountManager: AccountManager, smartFeedsController: SmartFeedsController) -> IconImageCache {
		IconImageCache(feedIconDownloader: feedIconDownloader, faviconDownloader: faviconDownloader, authorAvatarDownloader: authorAvatarDownloader, accountManager: accountManager, smartFeedsController: smartFeedsController)
	}
}

@Instantiable
extension ArticleThemesManager: Instantiable {
	public static func instantiate(appDefaults: AppDefaults) -> ArticleThemesManager {
		ArticleThemesManager(appDefaults: appDefaults)
	}
}

@Instantiable
extension ArticleThemeDownloader: Instantiable {
	public static func instantiate(downloader: Downloader) -> ArticleThemeDownloader {
		ArticleThemeDownloader(downloader: downloader)
	}
}

@Instantiable
extension ArticleStatusSyncTimer: Instantiable {
	public static func instantiate(accountManager: AccountManager) -> ArticleStatusSyncTimer {
		ArticleStatusSyncTimer(accountManager: accountManager)
	}
}

@Instantiable
extension ExtensionFeedAddRequestFile: Instantiable {
	public static func instantiate(accountManager: AccountManager) -> ExtensionFeedAddRequestFile {
		ExtensionFeedAddRequestFile(accountManager: accountManager)
	}
}

@Instantiable
extension ExtensionContainersFile: Instantiable {
	public static func instantiate(accountManager: AccountManager) -> ExtensionContainersFile {
		ExtensionContainersFile(accountManager: accountManager)
	}
}

@Instantiable
extension UserNotificationManager: Instantiable {
	public static func instantiate(articleStringFormatter: ArticleStringFormatter) -> UserNotificationManager {
		UserNotificationManager(articleStringFormatter: articleStringFormatter)
	}
}

@Instantiable
extension WebViewFullscreenKeeper: Instantiable {
	public static func instantiate() -> WebViewFullscreenKeeper {
		WebViewFullscreenKeeper()
	}
}
