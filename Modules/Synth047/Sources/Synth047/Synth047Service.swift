//
//  Synth047Service.swift
//  Synth047 (synthetic, Phase 2b)
//

import Foundation
import Synth046

@MainActor public final class Synth047Service {

	public let store: Synth047Store
	public let previous: Synth046Service

	public init(store: Synth047Store, previous: Synth046Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
