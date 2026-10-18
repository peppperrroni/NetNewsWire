//
//  Synth054Store.swift
//  Synth054 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth054Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth054Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth054Model1Batch(count: count)
	}
}
