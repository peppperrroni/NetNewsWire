//
//  Synth018Store.swift
//  Synth018 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth018Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth018Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth018Model1Batch(count: count)
	}
}
