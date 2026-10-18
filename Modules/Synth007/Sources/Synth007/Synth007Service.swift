//
//  Synth007Service.swift
//  Synth007 (synthetic, Phase 2b)
//

import Foundation
import Synth006

@MainActor public final class Synth007Service {

	public let store: Synth007Store
	public let previous: Synth006Service

	public init(store: Synth007Store, previous: Synth006Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
