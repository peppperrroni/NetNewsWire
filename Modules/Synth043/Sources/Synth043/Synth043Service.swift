//
//  Synth043Service.swift
//  Synth043 (synthetic, Phase 2b)
//

import Foundation
import Synth042

@MainActor public final class Synth043Service {

	public let store: Synth043Store
	public let previous: Synth042Service

	public init(store: Synth043Store, previous: Synth042Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
