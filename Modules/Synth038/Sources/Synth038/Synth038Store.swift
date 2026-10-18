//
//  Synth038Store.swift
//  Synth038 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth038Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth038Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth038Model1Batch(count: count)
	}
}
