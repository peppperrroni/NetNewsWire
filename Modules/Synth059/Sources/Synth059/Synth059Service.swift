//
//  Synth059Service.swift
//  Synth059 (synthetic, Phase 2b)
//

import Foundation
import Synth058

@MainActor public final class Synth059Service {

	public let store: Synth059Store
	public let previous: Synth058Service

	public init(store: Synth059Store, previous: Synth058Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
