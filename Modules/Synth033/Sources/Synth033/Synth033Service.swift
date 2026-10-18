//
//  Synth033Service.swift
//  Synth033 (synthetic, Phase 2b)
//

import Foundation
import Synth032

@MainActor public final class Synth033Service {

	public let store: Synth033Store
	public let previous: Synth032Service

	public init(store: Synth033Store, previous: Synth032Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
