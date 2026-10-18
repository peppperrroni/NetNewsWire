//
//  Synth012Service.swift
//  Synth012 (synthetic, Phase 2b)
//

import Foundation
import Synth011

@MainActor public final class Synth012Service {

	public let store: Synth012Store
	public let previous: Synth011Service

	public init(store: Synth012Store, previous: Synth011Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
