//
//  Synth016Store.swift
//  Synth016 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth016Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth016Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth016Model1Batch(count: count)
	}
}
