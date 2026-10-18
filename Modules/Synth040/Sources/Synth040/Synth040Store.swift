//
//  Synth040Store.swift
//  Synth040 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth040Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth040Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth040Model1Batch(count: count)
	}
}
