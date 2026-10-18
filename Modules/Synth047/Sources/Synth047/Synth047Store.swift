//
//  Synth047Store.swift
//  Synth047 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth047Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth047Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth047Model1Batch(count: count)
	}
}
