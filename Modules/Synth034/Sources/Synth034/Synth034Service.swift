//
//  Synth034Service.swift
//  Synth034 (synthetic, Phase 2b)
//

import Foundation
import Synth033

@MainActor public final class Synth034Service {

	public let store: Synth034Store
	public let previous: Synth033Service

	public init(store: Synth034Store, previous: Synth033Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
