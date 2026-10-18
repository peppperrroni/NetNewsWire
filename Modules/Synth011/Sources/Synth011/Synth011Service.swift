//
//  Synth011Service.swift
//  Synth011 (synthetic, Phase 2b)
//

import Foundation
import Synth010

@MainActor public final class Synth011Service {

	public let store: Synth011Store
	public let previous: Synth010Service

	public init(store: Synth011Store, previous: Synth010Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
