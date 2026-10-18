//
//  Synth027Store.swift
//  Synth027 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth027Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth027Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth027Model1Batch(count: count)
	}
}
