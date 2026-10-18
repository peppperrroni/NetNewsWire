//
//  Synth008Store.swift
//  Synth008 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth008Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth008Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth008Model1Batch(count: count)
	}
}
