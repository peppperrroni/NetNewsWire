//
//  Synth014Service.swift
//  Synth014 (synthetic, Phase 2b)
//

import Foundation
import Synth013

@MainActor public final class Synth014Service {

	public let store: Synth014Store
	public let previous: Synth013Service

	public init(store: Synth014Store, previous: Synth013Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
