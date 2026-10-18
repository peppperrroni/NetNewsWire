//
//  Synth053Service.swift
//  Synth053 (synthetic, Phase 2b)
//

import Foundation
import Synth052

@MainActor public final class Synth053Service {

	public let store: Synth053Store
	public let previous: Synth052Service

	public init(store: Synth053Store, previous: Synth052Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
