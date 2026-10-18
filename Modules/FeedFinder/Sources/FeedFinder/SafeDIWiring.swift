//
//  SafeDIWiring.swift
//  FeedFinder
//
//  SafeDI instantiation for this package's services (safedi-pkg variant: wiring lives with the types).
//

import Foundation
import SafeDI
import RSWeb
import ActivityLog

@Instantiable
extension FeedFinder: Instantiable {
	public static func instantiate(downloader: Downloader, activityLog: ActivityLog) -> FeedFinder {
		FeedFinder(downloader: downloader, activityLog: activityLog)
	}
}
