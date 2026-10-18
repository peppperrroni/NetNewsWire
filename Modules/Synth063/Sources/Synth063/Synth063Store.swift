//
//  Synth063Store.swift
//  Synth063 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth063Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth063Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth063Model1Batch(count: count)
	}
}
