//
//  Synth040Service.swift
//  Synth040 (synthetic, Phase 2b)
//

import Foundation
import Synth039

@MainActor public final class Synth040Service {

	public let store: Synth040Store
	public let previous: Synth039Service

	public init(store: Synth040Store, previous: Synth039Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
