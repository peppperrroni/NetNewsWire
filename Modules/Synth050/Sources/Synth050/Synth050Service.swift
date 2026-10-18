//
//  Synth050Service.swift
//  Synth050 (synthetic, Phase 2b)
//

import Foundation
import Synth049

@MainActor public final class Synth050Service {

	public let store: Synth050Store
	public let previous: Synth049Service

	public init(store: Synth050Store, previous: Synth049Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
