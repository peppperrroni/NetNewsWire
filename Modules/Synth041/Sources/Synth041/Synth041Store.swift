//
//  Synth041Store.swift
//  Synth041 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth041Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth041Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth041Model1Batch(count: count)
	}
}
