//
//  Synth029Service.swift
//  Synth029 (synthetic, Phase 2b)
//

import Foundation
import Synth028

@MainActor public final class Synth029Service {

	public let store: Synth029Store
	public let previous: Synth028Service

	public init(store: Synth029Store, previous: Synth028Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
