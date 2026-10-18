//
//  Synth021Service.swift
//  Synth021 (synthetic, Phase 2b)
//

import Foundation
import Synth020

@MainActor public final class Synth021Service {

	public let store: Synth021Store
	public let previous: Synth020Service

	public init(store: Synth021Store, previous: Synth020Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
