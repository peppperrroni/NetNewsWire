//
//  Synth030Store.swift
//  Synth030 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth030Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth030Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth030Model1Batch(count: count)
	}
}
