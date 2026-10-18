//
//  Synth045Service.swift
//  Synth045 (synthetic, Phase 2b)
//

import Foundation
import Synth044

@MainActor public final class Synth045Service {

	public let store: Synth045Store
	public let previous: Synth044Service

	public init(store: Synth045Store, previous: Synth044Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
