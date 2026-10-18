//
//  SafeDIWiring.swift
//  Synth059 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth058

@Instantiable
extension Synth059Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth059Store {
		Synth059Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth059Service: Instantiable {
	public static func instantiate(synth059Store: Synth059Store, synth058Service: Synth058Service) -> Synth059Service {
		Synth059Service(store: synth059Store, previous: synth058Service)
	}
}
