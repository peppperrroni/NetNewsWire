//
//  SafeDIWiring.swift
//  Synth008 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth007

@Instantiable
extension Synth008Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth008Store {
		Synth008Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth008Service: Instantiable {
	public static func instantiate(synth008Store: Synth008Store, synth007Service: Synth007Service) -> Synth008Service {
		Synth008Service(store: synth008Store, previous: synth007Service)
	}
}
