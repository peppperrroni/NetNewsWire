//
//  BenchResolve.swift
//  NetNewsWire-iOS
//
//  Per-variant: obtains every service through this variant's own access path.
//

import Foundation
import Account

@MainActor enum BenchResolve {

	/// Resolves every app service through the Needle component's shared properties (this variant's access path).
	static func resolveAll(_ deps: AppDependencies) {
		let c = deps.component
		BenchHooks.sink([
			c.batchUpdate, c.mainThreadOperationQueue, c.downloadCache, c.downloader,
			c.networkMonitor, c.activityLog, c.feedFinder, c.authorCache,
			c.htmlMetadataDatabase, c.htmlMetadataDownloader, c.imageMetadataDatabase,
			c.imageDownloader, c.faviconDownloader, c.feedIconDownloader,
			c.authorAvatarDownloader, c.faviconGenerator, c.accountManager, c.appDefaults,
			c.articleStringFormatter, c.smartFeedsController, c.iconImageCache,
			c.articleThemesManager, c.articleThemeDownloader, c.articleStatusSyncTimer,
			c.extensionFeedAddRequestFile, c.extensionContainersFile, c.widgetDataEncoder,
			c.userNotificationManager, c.webViewFullscreenKeeper
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
