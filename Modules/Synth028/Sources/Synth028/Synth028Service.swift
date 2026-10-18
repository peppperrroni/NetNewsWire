//
//  Synth028Service.swift
//  Synth028 (synthetic, Phase 2b)
//

import Foundation
import Synth027

@MainActor public final class Synth028Service {

	public let store: Synth028Store
	public let previous: Synth027Service

	public init(store: Synth028Store, previous: Synth027Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
