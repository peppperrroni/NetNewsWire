//
//  Synth025Service.swift
//  Synth025 (synthetic, Phase 2b)
//

import Foundation
import Synth024

@MainActor public final class Synth025Service {

	public let store: Synth025Store
	public let previous: Synth024Service

	public init(store: Synth025Store, previous: Synth024Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
