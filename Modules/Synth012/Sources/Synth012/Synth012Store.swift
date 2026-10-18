//
//  Synth012Store.swift
//  Synth012 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth012Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth012Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth012Model1Batch(count: count)
	}
}
