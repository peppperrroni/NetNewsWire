//
//  Synth055Store.swift
//  Synth055 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth055Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth055Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth055Model1Batch(count: count)
	}
}
