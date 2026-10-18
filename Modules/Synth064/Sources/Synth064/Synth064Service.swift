//
//  Synth064Service.swift
//  Synth064 (synthetic, Phase 2b)
//

import Foundation
import Synth063

@MainActor public final class Synth064Service {

	public let store: Synth064Store
	public let previous: Synth063Service

	public init(store: Synth064Store, previous: Synth063Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
