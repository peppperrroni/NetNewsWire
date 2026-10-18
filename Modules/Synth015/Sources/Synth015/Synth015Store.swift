//
//  Synth015Store.swift
//  Synth015 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth015Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth015Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth015Model1Batch(count: count)
	}
}
