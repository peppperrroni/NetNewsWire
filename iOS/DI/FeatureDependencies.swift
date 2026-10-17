//
//  FeatureDependencies.swift
//  NetNewsWire-iOS
//
//  The feature scope: a Swinject child container of the session container per timeline.
//  Smart-feed timelines are built by hand (outside the scope).
//

import Foundation
import Swinject
import Account

@MainActor final class FeatureDependencies {

	let container: Swinject.Container
	let timeline: TimelineFeature

	init(session: SessionDependencies, item: SidebarItem) {
		container = Swinject.Container(parent: session.container)
		container.register(FetchRequestQueue.self) { _ in onMain { FetchRequestQueue() } }.inObjectScope(.container)
		nonisolated(unsafe) let item = item
		container.register(TimelineFeature.self) { r in
			let (account, queue) = (r.resolve(Account.self)!, r.resolve(FetchRequestQueue.self)!)
			return onMain { TimelineFeature(sidebarItem: item, account: account, fetchRequestQueue: queue) }
		}.inObjectScope(.container)
		timeline = container.resolve(TimelineFeature.self)!
	}
}
