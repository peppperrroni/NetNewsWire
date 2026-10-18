//
//  Synth013Store.swift
//  Synth013 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth013Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth013Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth013Model1Batch(count: count)
	}
}
