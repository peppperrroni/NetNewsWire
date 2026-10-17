//
//  FeatureDependencies.swift
//  NetNewsWire-iOS
//
//  The feature scope: a SafeDI sub-tree per timeline, created by the session's Instantiator with
//  the selected item forwarded. Smart-feed timelines are built by hand (outside the scope).
//

import Foundation
import SafeDI
import Account

@Instantiable
@MainActor public final class FeatureDependencies: Instantiable {

	@Forwarded public let item: SidebarItem
	@Instantiated public let fetchRequestQueue: FetchRequestQueue
	@Instantiated public let timeline: TimelineFeature

	public init(item: SidebarItem, fetchRequestQueue: FetchRequestQueue, timeline: TimelineFeature) {
		self.item = item
		self.fetchRequestQueue = fetchRequestQueue
		self.timeline = timeline
	}
}

@Instantiable
extension FetchRequestQueue: Instantiable {
	public static func instantiate() -> FetchRequestQueue {
		FetchRequestQueue()
	}
}

@Instantiable
extension TimelineFeature: Instantiable {
	public static func instantiate(item: SidebarItem, account: Account, fetchRequestQueue: FetchRequestQueue) -> TimelineFeature {
		TimelineFeature(sidebarItem: item, account: account, fetchRequestQueue: fetchRequestQueue)
	}
}
