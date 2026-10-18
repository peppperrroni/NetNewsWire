//
//  Synth026Store.swift
//  Synth026 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth026Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth026Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth026Model1Batch(count: count)
	}
}
