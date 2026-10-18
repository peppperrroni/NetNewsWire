//
//  Synth041Service.swift
//  Synth041 (synthetic, Phase 2b)
//

import Foundation
import Synth040

@MainActor public final class Synth041Service {

	public let store: Synth041Store
	public let previous: Synth040Service

	public init(store: Synth041Store, previous: Synth040Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
