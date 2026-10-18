//
//  Synth010Service.swift
//  Synth010 (synthetic, Phase 2b)
//

import Foundation
import Synth009

@MainActor public final class Synth010Service {

	public let store: Synth010Store
	public let previous: Synth009Service

	public init(store: Synth010Store, previous: Synth009Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
