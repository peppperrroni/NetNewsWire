//
//  BenchResolve.swift
//  NetNewsWire-iOS
//
//  Per-variant: obtains every service through this variant's own access path.
//

import Foundation
import Account
import RSCore
import RSWeb
import ActivityLog
import FeedFinder
import Articles
import HTMLMetadata
import Images

@MainActor enum BenchResolve {

	/// Resolves every app service through the Swinject container (this variant's access path).
	static func resolveAll(_ deps: AppDependencies) {
		let c = deps.container
		BenchHooks.sink([
			c.resolve(BatchUpdate.self),
			c.resolve(MainThreadOperationQueue.self),
			c.resolve(DownloadCache.self),
			c.resolve(Downloader.self),
			c.resolve(NetworkMonitor.self),
			c.resolve(ActivityLog.self),
			c.resolve(FeedFinder.self),
			c.resolve(AuthorCache.self),
			c.resolve(HTMLMetadataDatabase.self),
			c.resolve(HTMLMetadataDownloader.self),
			c.resolve(ImageMetadataDatabase.self),
			c.resolve(ImageDownloader.self),
			c.resolve(FaviconDownloader.self),
			c.resolve(FeedIconDownloader.self),
			c.resolve(AuthorAvatarDownloader.self),
			c.resolve(FaviconGenerator.self),
			c.resolve(AccountManager.self),
			c.resolve(AppDefaults.self),
			c.resolve(ArticleStringFormatter.self),
			c.resolve(SmartFeedsController.self),
			c.resolve(IconImageCache.self),
			c.resolve(ArticleThemesManager.self),
			c.resolve(ArticleThemeDownloader.self),
			c.resolve(ArticleStatusSyncTimer.self),
			c.resolve(ExtensionFeedAddRequestFile.self),
			c.resolve(ExtensionContainersFile.self),
			c.resolve(UserNotificationManager.self),
			c.resolve(WebViewFullscreenKeeper.self),
			c.resolve(WidgetDataEncoder?.self) ?? nil
		])
	}

	/// This variant's scope mechanism, for the shared checks.
	static func scopeAccess(_ deps: AppDependencies) -> BenchScopeAccess {
		BenchScopeAccess(
			makeSession: { accountID in
				let folder = FileManager.default.temporaryDirectory.appendingPathComponent("bench-scopes/\(accountID)")
				try? FileManager.default.createDirectory(at: folder, withIntermediateDirectories: true)
				return deps.makeSession(dataFolder: folder.path, type: .onMyMac, accountID: accountID)
			},
			sessionObjects: { any in
				guard let session = any as? SessionDependencies else {
					return [:]
				}
				return ["account": session.account, "database": session.database]
			},
			makeFeature: { any in
				guard let session = any as? SessionDependencies, let folder = session.account.ensureFolder(withFolderNames: ["Bench"]) else {
					return NSNull()
				}
				return session.makeFeature(for: folder)
			},
			featureObjects: { any in
				guard let feature = any as? FeatureDependencies else {
					return [:]
				}
				return ["timeline": feature.timeline, "fetchRequestQueue": feature.timeline.fetchRequestQueue]
			},
			appObjectsUsing: { any in
				guard let session = any as? SessionDependencies, let folder = session.account.ensureFolder(withFolderNames: ["Bench"]), let itemID = folder.sidebarItemID else {
					return
				}
				_ = deps.iconImageCache.imageFor(itemID)
			})
	}
}
