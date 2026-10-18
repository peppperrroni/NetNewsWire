//
//  Synth020Service.swift
//  Synth020 (synthetic, Phase 2b)
//

import Foundation
import Synth019

@MainActor public final class Synth020Service {

	public let store: Synth020Store
	public let previous: Synth019Service

	public init(store: Synth020Store, previous: Synth019Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
