//
//  Synth032Store.swift
//  Synth032 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth032Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth032Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth032Model1Batch(count: count)
	}
}
