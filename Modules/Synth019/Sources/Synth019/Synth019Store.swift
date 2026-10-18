//
//  Synth019Store.swift
//  Synth019 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth019Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth019Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth019Model1Batch(count: count)
	}
}
