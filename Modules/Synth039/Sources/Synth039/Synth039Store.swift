//
//  Synth039Store.swift
//  Synth039 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth039Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth039Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth039Model1Batch(count: count)
	}
}
