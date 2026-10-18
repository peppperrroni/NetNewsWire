//
//  Synth009Store.swift
//  Synth009 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth009Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth009Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth009Model1Batch(count: count)
	}
}
