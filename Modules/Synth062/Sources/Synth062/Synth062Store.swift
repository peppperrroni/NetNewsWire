//
//  Synth062Store.swift
//  Synth062 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth062Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth062Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth062Model1Batch(count: count)
	}
}
