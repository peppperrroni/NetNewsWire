//
//  Synth052Service.swift
//  Synth052 (synthetic, Phase 2b)
//

import Foundation
import Synth051

@MainActor public final class Synth052Service {

	public let store: Synth052Store
	public let previous: Synth051Service

	public init(store: Synth052Store, previous: Synth051Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
