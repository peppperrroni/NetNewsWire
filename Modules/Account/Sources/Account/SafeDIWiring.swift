//
//  SafeDIWiring.swift
//  Account
//
//  SafeDI instantiation for this package's services (safedi-pkg variant: wiring lives with the types).
//

import Foundation
import SafeDI
import RSCore
import RSWeb
import ActivityLog
import FeedFinder
import ArticlesDatabase

@Instantiable
extension ArticlesDatabase: @retroactive Instantiable {
	public static func instantiate(dataFolder: String, type: AccountType, accountID: String) -> ArticlesDatabase {
		Account.makeDatabase(dataFolder: dataFolder, type: type, accountID: accountID)
	}
}

@Instantiable
extension Account: Instantiable {
	public static func instantiate(dataFolder: String, type: AccountType, accountID: String, database: ArticlesDatabase, activityLog: ActivityLog, batchUpdate: BatchUpdate, networkMonitor: NetworkMonitor, feedFinder: FeedFinder) -> Account {
		Account(dataFolder: dataFolder, type: type, accountID: accountID, database: database, activityLog: activityLog, batchUpdate: batchUpdate, networkMonitor: networkMonitor, feedFinder: feedFinder)
	}
}
