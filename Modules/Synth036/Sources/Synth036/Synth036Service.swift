//
//  Synth036Service.swift
//  Synth036 (synthetic, Phase 2b)
//

import Foundation
import Synth035

@MainActor public final class Synth036Service {

	public let store: Synth036Store
	public let previous: Synth035Service

	public init(store: Synth036Store, previous: Synth035Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
