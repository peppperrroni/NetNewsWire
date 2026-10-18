//
//  SafeDIWiring.swift
//  Synth060 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth059

@Instantiable
extension Synth060Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth060Store {
		Synth060Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth060Service: Instantiable {
	public static func instantiate(synth060Store: Synth060Store, synth059Service: Synth059Service) -> Synth060Service {
		Synth060Service(store: synth060Store, previous: synth059Service)
	}
}
