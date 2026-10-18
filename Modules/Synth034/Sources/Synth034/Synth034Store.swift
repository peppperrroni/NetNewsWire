//
//  Synth034Store.swift
//  Synth034 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth034Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth034Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth034Model1Batch(count: count)
	}
}
