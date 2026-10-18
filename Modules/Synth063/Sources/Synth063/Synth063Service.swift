//
//  Synth063Service.swift
//  Synth063 (synthetic, Phase 2b)
//

import Foundation
import Synth062

@MainActor public final class Synth063Service {

	public let store: Synth063Store
	public let previous: Synth062Service

	public init(store: Synth063Store, previous: Synth062Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
