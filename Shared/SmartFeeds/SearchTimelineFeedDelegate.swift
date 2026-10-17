//
//  SearchTimelineFeedDelegate.swift
//  NetNewsWire
//
//  Created by Maurice Parker on 8/31/19.
//  Copyright © 2019 Ranchero Software. All rights reserved.
//

import Foundation
import RSCore
import Account
import Articles
import ArticlesDatabase
import Images

struct SearchTimelineFeedDelegate: SmartFeedDelegate {

	var sidebarItemID: SidebarItemIdentifier? {
		return SidebarItemIdentifier.smartFeed(String(describing: SearchTimelineFeedDelegate.self))
	}

	var nameForDisplay: String {
		return nameForDisplayPrefix + searchString
	}

	let nameForDisplayPrefix = NSLocalizedString("Search: ", comment: "Search smart feed title prefix")
	let searchString: String
	let fetchType: FetchType
	let accountManager: AccountManager
	var smallIcon: IconImage? = Assets.Images.searchFeed

	init(searchString: String, articleIDs: Set<String>, accountManager: AccountManager) {
		self.accountManager = accountManager
		self.searchString = searchString
		self.fetchType = .searchWithArticleIDs(searchString, articleIDs)
	}

	func fetchUnreadCount(account: Account) async -> Int {
		// TODO: after 5.0
		0
	}
}
