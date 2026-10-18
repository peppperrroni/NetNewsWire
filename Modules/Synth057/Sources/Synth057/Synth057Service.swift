//
//  Synth057Service.swift
//  Synth057 (synthetic, Phase 2b)
//

import Foundation
import Synth056

@MainActor public final class Synth057Service {

	public let store: Synth057Store
	public let previous: Synth056Service

	public init(store: Synth057Store, previous: Synth056Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
