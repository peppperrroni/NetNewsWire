//
//  Synth010Store.swift
//  Synth010 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth010Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth010Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth010Model1Batch(count: count)
	}
}
