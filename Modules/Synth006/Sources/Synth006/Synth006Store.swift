//
//  Synth006Store.swift
//  Synth006 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth006Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth006Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth006Model1Batch(count: count)
	}
}
