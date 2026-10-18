//
//  Synth023Service.swift
//  Synth023 (synthetic, Phase 2b)
//

import Foundation
import Synth022

@MainActor public final class Synth023Service {

	public let store: Synth023Store
	public let previous: Synth022Service

	public init(store: Synth023Store, previous: Synth022Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
