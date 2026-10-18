//
//  Synth003Service.swift
//  Synth003 (synthetic, Phase 2b)
//

import Foundation
import Synth002

@MainActor public final class Synth003Service {

	public let store: Synth003Store
	public let previous: Synth002Service

	public init(store: Synth003Store, previous: Synth002Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
