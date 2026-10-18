//
//  Synth009Service.swift
//  Synth009 (synthetic, Phase 2b)
//

import Foundation
import Synth008

@MainActor public final class Synth009Service {

	public let store: Synth009Store
	public let previous: Synth008Service

	public init(store: Synth009Store, previous: Synth008Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
