//
//  Synth025Store.swift
//  Synth025 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth025Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth025Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth025Model1Batch(count: count)
	}
}
