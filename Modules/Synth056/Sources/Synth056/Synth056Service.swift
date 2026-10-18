//
//  Synth056Service.swift
//  Synth056 (synthetic, Phase 2b)
//

import Foundation
import Synth055

@MainActor public final class Synth056Service {

	public let store: Synth056Store
	public let previous: Synth055Service

	public init(store: Synth056Store, previous: Synth055Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
