//
//  Synth011Store.swift
//  Synth011 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth011Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth011Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth011Model1Batch(count: count)
	}
}
