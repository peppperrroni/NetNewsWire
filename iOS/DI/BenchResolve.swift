//
//  BenchResolve.swift
//  NetNewsWire-iOS
//
//  Per-variant: obtains every service through this variant's own access path.
//

import Foundation
import Account

@MainActor enum BenchResolve {

	static func resolveAll(_ deps: AppDependencies) {
		BenchHooks.sink([
			deps.batchUpdate, deps.mainThreadOperationQueue, deps.downloadCache, deps.downloader,
			deps.networkMonitor, deps.activityLog, deps.feedFinder, deps.authorCache,
			deps.htmlMetadataDatabase, deps.htmlMetadataDownloader, deps.imageMetadataDatabase,
			deps.imageDownloader, deps.faviconDownloader, deps.feedIconDownloader,
			deps.authorAvatarDownloader, deps.faviconGenerator, deps.accountManager, deps.appDefaults,
			deps.articleStringFormatter, deps.smartFeedsController, deps.iconImageCache,
			deps.articleThemesManager, deps.articleThemeDownloader, deps.articleStatusSyncTimer,
			deps.extensionFeedAddRequestFile, deps.extensionContainersFile, deps.widgetDataEncoder,
			deps.userNotificationManager, deps.webViewFullscreenKeeper
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
