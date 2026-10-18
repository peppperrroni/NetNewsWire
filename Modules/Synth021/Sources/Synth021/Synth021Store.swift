//
//  Synth021Store.swift
//  Synth021 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth021Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth021Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth021Model1Batch(count: count)
	}
}
