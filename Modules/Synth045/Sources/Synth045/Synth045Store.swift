//
//  Synth045Store.swift
//  Synth045 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth045Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth045Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth045Model1Batch(count: count)
	}
}
