//
//  Synth013Service.swift
//  Synth013 (synthetic, Phase 2b)
//

import Foundation
import Synth012

@MainActor public final class Synth013Service {

	public let store: Synth013Store
	public let previous: Synth012Service

	public init(store: Synth013Store, previous: Synth012Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
