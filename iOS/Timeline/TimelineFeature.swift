//
//  TimelineFeature.swift
//  NetNewsWire-iOS
//
//  The state of one timeline selection: created when a feed, folder or smart feed is
//  selected, released when another selection replaces it.
//

import Foundation
import Account
import Articles

@MainActor public final class TimelineFeature {

	let sidebarItem: SidebarItem?
	/// The account whose session this timeline belongs to; nil for smart feeds and no selection.
	let account: Account?
	let fetchRequestQueue: FetchRequestQueue
	var articles = ArticleArray()

	public init(sidebarItem: SidebarItem?, account: Account?, fetchRequestQueue: FetchRequestQueue) {
		self.sidebarItem = sidebarItem
		self.account = account
		self.fetchRequestQueue = fetchRequestQueue
	}
}
