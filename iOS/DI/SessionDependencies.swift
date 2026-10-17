//
//  SessionDependencies.swift
//  NetNewsWire-iOS
//
//  The session scope: a SafeDI sub-tree per Account, created by the root's Instantiator with
//  the account's data folder, type and ID forwarded.
//

import Foundation
import SafeDI
import RSCore
import RSWeb
import ActivityLog
import FeedFinder
import Account
import ArticlesDatabase

@Instantiable
@MainActor public final class SessionDependencies: Instantiable {

	@Forwarded public let dataFolder: String
	@Forwarded public let type: AccountType
	@Forwarded public let accountID: String
	@Instantiated public let database: ArticlesDatabase
	@Instantiated public let account: Account
	@Instantiated public let featureInstantiator: Instantiator<FeatureDependencies>

	public init(dataFolder: String, type: AccountType, accountID: String, database: ArticlesDatabase, account: Account, featureInstantiator: Instantiator<FeatureDependencies>) {
		self.dataFolder = dataFolder
		self.type = type
		self.accountID = accountID
		self.database = database
		self.account = account
		self.featureInstantiator = featureInstantiator
	}

	public func makeFeature(for item: SidebarItem) -> FeatureDependencies {
		featureInstantiator.instantiate(item)
	}
}

@Instantiable
extension ArticlesDatabase: @retroactive Instantiable {
	public static func instantiate(dataFolder: String, type: AccountType, accountID: String) -> ArticlesDatabase {
		Account.makeDatabase(dataFolder: dataFolder, type: type, accountID: accountID)
	}
}

@Instantiable
extension Account: @retroactive Instantiable {
	public static func instantiate(dataFolder: String, type: AccountType, accountID: String, database: ArticlesDatabase, activityLog: ActivityLog, batchUpdate: BatchUpdate, networkMonitor: NetworkMonitor, feedFinder: FeedFinder) -> Account {
		Account(dataFolder: dataFolder, type: type, accountID: accountID, database: database, activityLog: activityLog, batchUpdate: batchUpdate, networkMonitor: networkMonitor, feedFinder: feedFinder)
	}
}
