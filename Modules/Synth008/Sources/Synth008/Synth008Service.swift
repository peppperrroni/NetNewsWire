//
//  Synth008Service.swift
//  Synth008 (synthetic, Phase 2b)
//

import Foundation
import Synth007

@MainActor public final class Synth008Service {

	public let store: Synth008Store
	public let previous: Synth007Service

	public init(store: Synth008Store, previous: Synth007Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
