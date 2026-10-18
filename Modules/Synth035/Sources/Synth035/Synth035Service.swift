//
//  Synth035Service.swift
//  Synth035 (synthetic, Phase 2b)
//

import Foundation
import Synth034

@MainActor public final class Synth035Service {

	public let store: Synth035Store
	public let previous: Synth034Service

	public init(store: Synth035Store, previous: Synth034Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
