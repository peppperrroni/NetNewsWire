//
//  Synth058Service.swift
//  Synth058 (synthetic, Phase 2b)
//

import Foundation
import Synth057

@MainActor public final class Synth058Service {

	public let store: Synth058Store
	public let previous: Synth057Service

	public init(store: Synth058Store, previous: Synth057Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
