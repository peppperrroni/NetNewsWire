//
//  Synth062Service.swift
//  Synth062 (synthetic, Phase 2b)
//

import Foundation
import Synth061

@MainActor public final class Synth062Service {

	public let store: Synth062Store
	public let previous: Synth061Service

	public init(store: Synth062Store, previous: Synth061Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
