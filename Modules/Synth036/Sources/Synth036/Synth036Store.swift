//
//  Synth036Store.swift
//  Synth036 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth036Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth036Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth036Model1Batch(count: count)
	}
}
