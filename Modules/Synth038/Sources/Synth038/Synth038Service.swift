//
//  Synth038Service.swift
//  Synth038 (synthetic, Phase 2b)
//

import Foundation
import Synth037

@MainActor public final class Synth038Service {

	public let store: Synth038Store
	public let previous: Synth037Service

	public init(store: Synth038Store, previous: Synth037Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
