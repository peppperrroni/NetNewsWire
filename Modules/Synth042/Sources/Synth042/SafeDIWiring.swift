//
//  SafeDIWiring.swift
//  Synth042 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth041

@Instantiable
extension Synth042Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth042Store {
		Synth042Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth042Service: Instantiable {
	public static func instantiate(synth042Store: Synth042Store, synth041Service: Synth041Service) -> Synth042Service {
		Synth042Service(store: synth042Store, previous: synth041Service)
	}
}
