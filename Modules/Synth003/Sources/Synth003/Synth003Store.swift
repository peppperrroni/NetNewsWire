//
//  Synth003Store.swift
//  Synth003 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth003Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth003Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth003Model1Batch(count: count)
	}
}
