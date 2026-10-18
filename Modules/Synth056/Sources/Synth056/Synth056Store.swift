//
//  Synth056Store.swift
//  Synth056 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth056Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth056Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth056Model1Batch(count: count)
	}
}
