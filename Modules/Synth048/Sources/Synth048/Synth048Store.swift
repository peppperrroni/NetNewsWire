//
//  Synth048Store.swift
//  Synth048 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth048Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth048Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth048Model1Batch(count: count)
	}
}
