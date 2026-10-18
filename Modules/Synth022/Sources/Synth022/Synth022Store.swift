//
//  Synth022Store.swift
//  Synth022 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth022Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth022Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth022Model1Batch(count: count)
	}
}
