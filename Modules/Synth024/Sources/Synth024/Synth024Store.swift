//
//  Synth024Store.swift
//  Synth024 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth024Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth024Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth024Model1Batch(count: count)
	}
}
