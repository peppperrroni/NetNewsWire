//
//  Synth029Store.swift
//  Synth029 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth029Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth029Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth029Model1Batch(count: count)
	}
}
