//
//  Synth051Service.swift
//  Synth051 (synthetic, Phase 2b)
//

import Foundation
import Synth050

@MainActor public final class Synth051Service {

	public let store: Synth051Store
	public let previous: Synth050Service

	public init(store: Synth051Store, previous: Synth050Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
