//
//  Synth023Store.swift
//  Synth023 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth023Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth023Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth023Model1Batch(count: count)
	}
}
