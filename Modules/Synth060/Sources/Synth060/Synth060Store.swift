//
//  Synth060Store.swift
//  Synth060 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth060Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth060Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth060Model1Batch(count: count)
	}
}
