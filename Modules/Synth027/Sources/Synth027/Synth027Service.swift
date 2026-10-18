//
//  Synth027Service.swift
//  Synth027 (synthetic, Phase 2b)
//

import Foundation
import Synth026

@MainActor public final class Synth027Service {

	public let store: Synth027Store
	public let previous: Synth026Service

	public init(store: Synth027Store, previous: Synth026Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
