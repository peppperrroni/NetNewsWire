//
//  Synth006Service.swift
//  Synth006 (synthetic, Phase 2b)
//

import Foundation
import Synth005

@MainActor public final class Synth006Service {

	public let store: Synth006Store
	public let previous: Synth005Service

	public init(store: Synth006Store, previous: Synth005Service) {
		self.store = store
		self.previous = previous
	}

	public func summary() -> Int {
		store.items.total0()
	}
}
