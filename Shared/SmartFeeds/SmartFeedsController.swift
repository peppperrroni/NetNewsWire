//
//  SmartFeedsController.swift
//  NetNewsWire
//
//  Created by Brent Simmons on 12/16/17.
//  Copyright © 2017 Ranchero Software. All rights reserved.
//

import Foundation
import RSCore
import Account

@MainActor public final class SmartFeedsController: DisplayNameProvider, ContainerIdentifiable {
	public nonisolated let containerID: ContainerIdentifier? = ContainerIdentifier.smartFeedController

	public let nameForDisplay = NSLocalizedString("Smart Feeds", comment: "Smart Feeds group title")

	var smartFeeds = [SidebarItem]()
	let todayFeed: SmartFeed
	let unreadFeed: UnreadFeed
	let starredFeed: SmartFeed

	public init(accountManager: AccountManager) {
		self.todayFeed = SmartFeed(delegate: TodayFeedDelegate(accountManager: accountManager))
		self.unreadFeed = UnreadFeed(accountManager: accountManager)
		self.starredFeed = SmartFeed(delegate: StarredFeedDelegate(accountManager: accountManager))
		self.smartFeeds = [todayFeed, unreadFeed, starredFeed]
	}

	func find(by identifier: SidebarItemIdentifier) -> PseudoFeed? {
		switch identifier {
		case .smartFeed(let stringIdentifer):
			switch stringIdentifer {
			case String(describing: TodayFeedDelegate.self):
				return todayFeed
			case String(describing: UnreadFeed.self):
				return unreadFeed
			case String(describing: StarredFeedDelegate.self):
				return starredFeed
			default:
				return nil
			}
		default:
			return nil
		}
	}

}
