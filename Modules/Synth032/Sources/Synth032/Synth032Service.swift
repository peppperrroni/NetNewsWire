//
//  Synth032Service.swift
//  Synth032 (synthetic, Phase 2b)
//

import Foundation
import Synth031

@MainActor public final class Synth032Service {

	public let store: Synth032Store
	public let previous: Synth031Service

	public init(store: Synth032Store, previous: Synth031Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
