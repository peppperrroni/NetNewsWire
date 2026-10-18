//
//  Synth019Service.swift
//  Synth019 (synthetic, Phase 2b)
//

import Foundation
import Synth018

@MainActor public final class Synth019Service {

	public let store: Synth019Store
	public let previous: Synth018Service

	public init(store: Synth019Store, previous: Synth018Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
