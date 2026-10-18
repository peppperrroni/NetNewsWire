//
//  Synth024Service.swift
//  Synth024 (synthetic, Phase 2b)
//

import Foundation
import Synth023

@MainActor public final class Synth024Service {

	public let store: Synth024Store
	public let previous: Synth023Service

	public init(store: Synth024Store, previous: Synth023Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
