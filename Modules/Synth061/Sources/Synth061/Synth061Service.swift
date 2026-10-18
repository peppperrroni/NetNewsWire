//
//  Synth061Service.swift
//  Synth061 (synthetic, Phase 2b)
//

import Foundation
import Synth060

@MainActor public final class Synth061Service {

	public let store: Synth061Store
	public let previous: Synth060Service

	public init(store: Synth061Store, previous: Synth060Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
