//
//  Synth002Service.swift
//  Synth002 (synthetic, Phase 2b)
//

import Foundation
import Synth001

@MainActor public final class Synth002Service {

	public let store: Synth002Store
	public let previous: Synth001Service

	public init(store: Synth002Store, previous: Synth001Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
