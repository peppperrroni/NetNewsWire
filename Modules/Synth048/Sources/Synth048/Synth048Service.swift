//
//  Synth048Service.swift
//  Synth048 (synthetic, Phase 2b)
//

import Foundation
import Synth047

@MainActor public final class Synth048Service {

	public let store: Synth048Store
	public let previous: Synth047Service

	public init(store: Synth048Store, previous: Synth047Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
