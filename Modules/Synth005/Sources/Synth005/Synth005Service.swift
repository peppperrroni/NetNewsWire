//
//  Synth005Service.swift
//  Synth005 (synthetic, Phase 2b)
//

import Foundation
import Synth004

@MainActor public final class Synth005Service {

	public let store: Synth005Store
	public let previous: Synth004Service

	public init(store: Synth005Store, previous: Synth004Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
