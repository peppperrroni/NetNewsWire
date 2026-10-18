//
//  Synth060Service.swift
//  Synth060 (synthetic, Phase 2b)
//

import Foundation
import Synth059

@MainActor public final class Synth060Service {

	public let store: Synth060Store
	public let previous: Synth059Service

	public init(store: Synth060Store, previous: Synth059Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
