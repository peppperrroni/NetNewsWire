//
//  Synth049Service.swift
//  Synth049 (synthetic, Phase 2b)
//

import Foundation
import Synth048

@MainActor public final class Synth049Service {

	public let store: Synth049Store
	public let previous: Synth048Service

	public init(store: Synth049Store, previous: Synth048Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
