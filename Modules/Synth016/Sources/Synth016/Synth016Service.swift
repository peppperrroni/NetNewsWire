//
//  Synth016Service.swift
//  Synth016 (synthetic, Phase 2b)
//

import Foundation
import Synth015

@MainActor public final class Synth016Service {

	public let store: Synth016Store
	public let previous: Synth015Service

	public init(store: Synth016Store, previous: Synth015Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
