//
//  Synth017Service.swift
//  Synth017 (synthetic, Phase 2b)
//

import Foundation
import Synth016

@MainActor public final class Synth017Service {

	public let store: Synth017Store
	public let previous: Synth016Service

	public init(store: Synth017Store, previous: Synth016Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
