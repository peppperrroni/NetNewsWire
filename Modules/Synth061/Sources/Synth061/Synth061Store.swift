//
//  Synth061Store.swift
//  Synth061 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth061Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth061Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth061Model1Batch(count: count)
	}
}
