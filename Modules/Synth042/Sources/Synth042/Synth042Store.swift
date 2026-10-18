//
//  Synth042Store.swift
//  Synth042 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth042Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth042Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth042Model1Batch(count: count)
	}
}
