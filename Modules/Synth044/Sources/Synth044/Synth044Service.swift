//
//  Synth044Service.swift
//  Synth044 (synthetic, Phase 2b)
//

import Foundation
import Synth043

@MainActor public final class Synth044Service {

	public let store: Synth044Store
	public let previous: Synth043Service

	public init(store: Synth044Store, previous: Synth043Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
