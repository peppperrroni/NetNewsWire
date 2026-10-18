//
//  Synth026Service.swift
//  Synth026 (synthetic, Phase 2b)
//

import Foundation
import Synth025

@MainActor public final class Synth026Service {

	public let store: Synth026Store
	public let previous: Synth025Service

	public init(store: Synth026Store, previous: Synth025Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
