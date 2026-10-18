//
//  Synth037Store.swift
//  Synth037 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth037Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth037Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth037Model1Batch(count: count)
	}
}
