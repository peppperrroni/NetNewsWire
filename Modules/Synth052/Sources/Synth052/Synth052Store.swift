//
//  Synth052Store.swift
//  Synth052 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth052Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth052Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth052Model1Batch(count: count)
	}
}
