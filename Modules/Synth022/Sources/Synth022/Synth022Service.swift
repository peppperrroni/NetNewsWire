//
//  Synth022Service.swift
//  Synth022 (synthetic, Phase 2b)
//

import Foundation
import Synth021

@MainActor public final class Synth022Service {

	public let store: Synth022Store
	public let previous: Synth021Service

	public init(store: Synth022Store, previous: Synth021Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
