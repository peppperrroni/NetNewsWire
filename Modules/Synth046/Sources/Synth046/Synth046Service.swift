//
//  Synth046Service.swift
//  Synth046 (synthetic, Phase 2b)
//

import Foundation
import Synth045

@MainActor public final class Synth046Service {

	public let store: Synth046Store
	public let previous: Synth045Service

	public init(store: Synth046Store, previous: Synth045Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
