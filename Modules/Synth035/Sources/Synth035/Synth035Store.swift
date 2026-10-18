//
//  Synth035Store.swift
//  Synth035 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth035Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth035Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth035Model1Batch(count: count)
	}
}
