//
//  SafeDIWiring.swift
//  Synth004 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth003

@Instantiable
extension Synth004Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth004Store {
		Synth004Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth004Service: Instantiable {
	public static func instantiate(synth004Store: Synth004Store, synth003Service: Synth003Service) -> Synth004Service {
		Synth004Service(store: synth004Store, previous: synth003Service)
	}
}
