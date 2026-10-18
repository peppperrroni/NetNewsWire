//
//  Synth055Service.swift
//  Synth055 (synthetic, Phase 2b)
//

import Foundation
import Synth054

@MainActor public final class Synth055Service {

	public let store: Synth055Store
	public let previous: Synth054Service

	public init(store: Synth055Store, previous: Synth054Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
