//
//  Synth004Service.swift
//  Synth004 (synthetic, Phase 2b)
//

import Foundation
import Synth003

@MainActor public final class Synth004Service {

	public let store: Synth004Store
	public let previous: Synth003Service

	public init(store: Synth004Store, previous: Synth003Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
