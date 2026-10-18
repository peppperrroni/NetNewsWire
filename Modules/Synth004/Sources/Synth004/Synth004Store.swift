//
//  Synth004Store.swift
//  Synth004 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth004Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth004Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth004Model1Batch(count: count)
	}
}
