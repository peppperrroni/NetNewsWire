//
//  Synth053Store.swift
//  Synth053 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth053Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth053Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth053Model1Batch(count: count)
	}
}
