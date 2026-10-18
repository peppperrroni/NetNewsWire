//
//  Synth057Store.swift
//  Synth057 (synthetic, Phase 2b)
//

import Foundation
import ActivityLog

@MainActor public final class Synth057Store {

	public let activityLog: ActivityLog
	public private(set) var items = [Synth057Model1]()

	public init(activityLog: ActivityLog) {
		self.activityLog = activityLog
	}

	public func load(count: Int) {
		items = makeSynth057Model1Batch(count: count)
	}
}
