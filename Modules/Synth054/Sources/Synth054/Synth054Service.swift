//
//  Synth054Service.swift
//  Synth054 (synthetic, Phase 2b)
//

import Foundation
import Synth053

@MainActor public final class Synth054Service {

	public let store: Synth054Store
	public let previous: Synth053Service

	public init(store: Synth054Store, previous: Synth053Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
