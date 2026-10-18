//
//  Synth043Store.swift
//  Synth043 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth043Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth043Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth043Model1Batch(count: count)
	}
}
