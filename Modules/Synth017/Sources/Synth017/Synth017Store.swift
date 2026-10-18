//
//  Synth017Store.swift
//  Synth017 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth017Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth017Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth017Model1Batch(count: count)
	}
}
