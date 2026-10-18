//
//  Synth064Store.swift
//  Synth064 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth064Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth064Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth064Model1Batch(count: count)
	}
}
