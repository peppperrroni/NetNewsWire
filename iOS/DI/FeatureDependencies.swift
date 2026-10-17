//
//  FeatureDependencies.swift
//  NetNewsWire-iOS
//
//  The feature scope as a Needle child component of the session component, one per timeline.
//  Smart-feed timelines are built by hand (outside the scope).
//

import Foundation
import NeedleFoundation
import Account

/// What the timeline scope needs from the session scope.
nonisolated protocol TimelineDependency: Dependency {
	var account: Account { get }
}

nonisolated final class TimelineComponent: Component<TimelineDependency> {

	nonisolated(unsafe) let item: SidebarItem

	init(parent: Scope, item: SidebarItem) {
		self.item = item
		super.init(parent: parent)
	}

	public var fetchRequestQueue: FetchRequestQueue { shared { MainActor.assumeIsolated { FetchRequestQueue() } } }

	public var timeline: TimelineFeature {
		let account = dependency.account
		let queue = fetchRequestQueue
		nonisolated(unsafe) let item = item
		return shared { MainActor.assumeIsolated { TimelineFeature(sidebarItem: item, account: account, fetchRequestQueue: queue) } }
	}
}

@MainActor final class FeatureDependencies {

	let component: TimelineComponent
	let timeline: TimelineFeature  // built eagerly so a feature scope is constructed, as in every other variant

	init(component: TimelineComponent) {
		self.component = component
		timeline = component.timeline
	}
}
