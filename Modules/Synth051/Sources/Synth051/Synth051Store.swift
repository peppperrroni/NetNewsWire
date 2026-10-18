//
//  Synth051Store.swift
//  Synth051 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth051Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth051Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth051Model1Batch(count: count)
	}
}
