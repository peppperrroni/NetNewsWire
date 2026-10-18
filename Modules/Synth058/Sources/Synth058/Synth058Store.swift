//
//  Synth058Store.swift
//  Synth058 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth058Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth058Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth058Model1Batch(count: count)
	}
}
