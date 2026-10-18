//
//  Synth028Store.swift
//  Synth028 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth028Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth028Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth028Model1Batch(count: count)
	}
}
