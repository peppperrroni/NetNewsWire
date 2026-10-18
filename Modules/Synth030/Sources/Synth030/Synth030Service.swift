//
//  Synth030Service.swift
//  Synth030 (synthetic, Phase 2b)
//

import Foundation
import Synth029

@MainActor public final class Synth030Service {

	public let store: Synth030Store
	public let previous: Synth029Service

	public init(store: Synth030Store, previous: Synth029Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
