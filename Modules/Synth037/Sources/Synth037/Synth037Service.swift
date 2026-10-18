//
//  Synth037Service.swift
//  Synth037 (synthetic, Phase 2b)
//

import Foundation
import Synth036

@MainActor public final class Synth037Service {

	public let store: Synth037Store
	public let previous: Synth036Service

	public init(store: Synth037Store, previous: Synth036Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
