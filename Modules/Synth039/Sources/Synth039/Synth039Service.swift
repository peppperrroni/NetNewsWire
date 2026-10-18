//
//  Synth039Service.swift
//  Synth039 (synthetic, Phase 2b)
//

import Foundation
import Synth038

@MainActor public final class Synth039Service {

	public let store: Synth039Store
	public let previous: Synth038Service

	public init(store: Synth039Store, previous: Synth038Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
