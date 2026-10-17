//
//  SessionDependencies.swift
//  NetNewsWire-iOS
//
//  The session scope as a Needle child component per Account.
//

import Foundation
import NeedleFoundation
import RSCore
import RSWeb
import ActivityLog
import FeedFinder
import Account
import ArticlesDatabase

/// What the session scope needs from the app scope.
nonisolated protocol SessionDependency: Dependency {
	var activityLog: ActivityLog { get }
	var batchUpdate: BatchUpdate { get }
	var networkMonitor: NetworkMonitor { get }
	var feedFinder: FeedFinder { get }
}

nonisolated final class SessionComponent: Component<SessionDependency> {

	let dataFolder: String
	let type: AccountType
	let accountID: String

	init(parent: Scope, dataFolder: String, type: AccountType, accountID: String) {
		self.dataFolder = dataFolder
		self.type = type
		self.accountID = accountID
		super.init(parent: parent)
	}

	public var database: ArticlesDatabase {
		let (dataFolder, type, accountID) = (dataFolder, type, accountID)
		return shared { MainActor.assumeIsolated { Account.makeDatabase(dataFolder: dataFolder, type: type, accountID: accountID) } }
	}

	public var account: Account {
		let (dataFolder, type, accountID, database) = (dataFolder, type, accountID, database)
		let (activityLog, batchUpdate, networkMonitor, feedFinder) = (dependency.activityLog, dependency.batchUpdate, dependency.networkMonitor, dependency.feedFinder)
		return shared {
			MainActor.assumeIsolated {
				Account(dataFolder: dataFolder, type: type, accountID: accountID, database: database, activityLog: activityLog, batchUpdate: batchUpdate, networkMonitor: networkMonitor, feedFinder: feedFinder)
			}
		}
	}

	/// Feature scope: a child component per timeline.
	func timelineComponent(item: SidebarItem) -> TimelineComponent {
		TimelineComponent(parent: self, item: item)
	}
}

/// Thin owner the app holds; same shape as the manual variant.
@MainActor final class SessionDependencies {

	let component: SessionComponent
	let database: ArticlesDatabase
	let account: Account

	init(component: SessionComponent) {
		self.component = component
		database = component.database
		account = component.account
	}

	func makeFeature(for item: SidebarItem) -> FeatureDependencies {
		FeatureDependencies(component: component.timelineComponent(item: item))
	}
}
