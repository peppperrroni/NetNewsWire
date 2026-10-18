//
//  Synth042Service.swift
//  Synth042 (synthetic, Phase 2b)
//

import Foundation
import Synth041

@MainActor public final class Synth042Service {

	public let store: Synth042Store
	public let previous: Synth041Service

	public init(store: Synth042Store, previous: Synth041Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
