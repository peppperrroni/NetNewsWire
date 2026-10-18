//
//  Synth044Store.swift
//  Synth044 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth044Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth044Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth044Model1Batch(count: count)
	}
}
