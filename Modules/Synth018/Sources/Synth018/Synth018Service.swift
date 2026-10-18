//
//  Synth018Service.swift
//  Synth018 (synthetic, Phase 2b)
//

import Foundation
import Synth017

@MainActor public final class Synth018Service {

	public let store: Synth018Store
	public let previous: Synth017Service

	public init(store: Synth018Store, previous: Synth017Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
