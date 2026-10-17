//
//  BenchResolve.swift
//  NetNewsWire-iOS
//
//  Per-variant: obtains every service through this variant's own access path.
//

import Foundation
import Account

@MainActor enum BenchResolve {

	/// Reads every app service from the SafeDI root's instantiated properties (this variant's access path).
	static func resolveAll(_ deps: AppDependencies) {
		let r = deps.root
		BenchHooks.sink([
			r.batchUpdate, r.mainThreadOperationQueue, r.downloadCache, r.downloader,
			r.networkMonitor, r.activityLog, r.feedFinder, r.authorCache,
			r.htmlMetadataDatabase, r.htmlMetadataDownloader, r.imageMetadataDatabase,
			r.imageDownloader, r.faviconDownloader, r.feedIconDownloader,
			r.authorAvatarDownloader, r.faviconGenerator, r.accountManager, r.appDefaults,
			r.articleStringFormatter, r.smartFeedsController, r.iconImageCache,
			r.articleThemesManager, r.articleThemeDownloader, r.articleStatusSyncTimer,
			r.extensionFeedAddRequestFile, r.extensionContainersFile, r.widgetDataEncoder,
			r.userNotificationManager, r.webViewFullscreenKeeper
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
