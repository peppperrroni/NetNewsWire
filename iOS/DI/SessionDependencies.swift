//
//  SessionDependencies.swift
//  NetNewsWire-iOS
//
//  The session-scope root: one per Account, built when AccountManager reads the account
//  from disk or creates it, dropped when the account is deleted.
//

import Foundation
import RSCore
import RSWeb
import ActivityLog
import FeedFinder
import Account
import ArticlesDatabase

@MainActor final class SessionDependencies {

	let database: ArticlesDatabase
	let account: Account

	init(dataFolder: String, type: AccountType, accountID: String, activityLog: ActivityLog, batchUpdate: BatchUpdate, networkMonitor: NetworkMonitor, feedFinder: FeedFinder) {
		database = Account.makeDatabase(dataFolder: dataFolder, type: type, accountID: accountID)
		account = Account(dataFolder: dataFolder, type: type, accountID: accountID, database: database, activityLog: activityLog, batchUpdate: batchUpdate, networkMonitor: networkMonitor, feedFinder: feedFinder)
	}

	func makeFeature(for item: SidebarItem) -> FeatureDependencies {
		FeatureDependencies(session: self, item: item)
	}
}
