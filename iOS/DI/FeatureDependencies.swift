//
//  FeatureDependencies.swift
//  NetNewsWire-iOS
//
//  The feature-scope root: one timeline for a feed or folder of one account, built from
//  that account's session. Smart-feed timelines are built by hand (outside the scope).
//

import Foundation
import Account

@MainActor final class FeatureDependencies {

	let timeline: TimelineFeature

	init(session: SessionDependencies, item: SidebarItem) {
		timeline = TimelineFeature(sidebarItem: item, account: session.account, fetchRequestQueue: FetchRequestQueue())
	}
}
