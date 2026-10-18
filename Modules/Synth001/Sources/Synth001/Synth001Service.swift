//
//  Synth001Service.swift
//  Synth001 (synthetic, Phase 2b)
//

import Foundation

@MainActor public final class Synth001Service {

	public let store: Synth001Store

	public init(store: Synth001Store) {
		self.store = store
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
