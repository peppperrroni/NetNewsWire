//
//  Synth046Store.swift
//  Synth046 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth046Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth046Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth046Model1Batch(count: count)
	}
}
