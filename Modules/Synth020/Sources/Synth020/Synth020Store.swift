//
//  Synth020Store.swift
//  Synth020 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth020Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth020Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth020Model1Batch(count: count)
	}
}
