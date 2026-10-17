//
//  SessionDependencies.swift
//  NetNewsWire-iOS
//
//  The session scope: a Swinject child container per Account; `.container` scope ties the
//  account's objects to this container's lifetime.
//

import Foundation
import Swinject
import RSCore
import RSWeb
import ActivityLog
import FeedFinder
import Account
import ArticlesDatabase

@MainActor final class SessionDependencies {

	let container: Swinject.Container
	let database: ArticlesDatabase
	let account: Account

	init(parent: Swinject.Container, dataFolder: String, type: AccountType, accountID: String) {
		container = Swinject.Container(parent: parent)
		container.register(ArticlesDatabase.self) { _ in onMain { Account.makeDatabase(dataFolder: dataFolder, type: type, accountID: accountID) } }.inObjectScope(.container)
		container.register(Account.self) { r in
			let (database, activityLog, batchUpdate, networkMonitor, feedFinder) = (r.resolve(ArticlesDatabase.self)!, r.resolve(ActivityLog.self)!, r.resolve(BatchUpdate.self)!, r.resolve(NetworkMonitor.self)!, r.resolve(FeedFinder.self)!)
			return onMain { Account(dataFolder: dataFolder, type: type, accountID: accountID, database: database, activityLog: activityLog, batchUpdate: batchUpdate, networkMonitor: networkMonitor, feedFinder: feedFinder) }
		}.inObjectScope(.container)
		database = container.resolve(ArticlesDatabase.self)!
		account = container.resolve(Account.self)!
	}

	func makeFeature(for item: SidebarItem) -> FeatureDependencies {
		FeatureDependencies(session: self, item: item)
	}
}
