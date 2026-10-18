//
//  Synth033Store.swift
//  Synth033 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth033Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth033Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth033Model1Batch(count: count)
	}
}
