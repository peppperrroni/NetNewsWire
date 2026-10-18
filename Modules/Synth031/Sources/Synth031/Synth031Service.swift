//
//  Synth031Service.swift
//  Synth031 (synthetic, Phase 2b)
//

import Foundation
import Synth030

@MainActor public final class Synth031Service {

	public let store: Synth031Store
	public let previous: Synth030Service

	public init(store: Synth031Store, previous: Synth030Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
