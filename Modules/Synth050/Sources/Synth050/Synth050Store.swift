//
//  Synth050Store.swift
//  Synth050 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth050Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth050Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth050Model1Batch(count: count)
	}
}
