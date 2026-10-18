//
//  Synth015Service.swift
//  Synth015 (synthetic, Phase 2b)
//

import Foundation
import Synth014

@MainActor public final class Synth015Service {

	public let store: Synth015Store
	public let previous: Synth014Service

	public init(store: Synth015Store, previous: Synth014Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
