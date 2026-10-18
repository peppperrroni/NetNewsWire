//
//  SafeDIWiring.swift
//  Synth002 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth001

@Instantiable
extension Synth002Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth002Store {
		Synth002Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth002Service: Instantiable {
	public static func instantiate(synth002Store: Synth002Store, synth001Service: Synth001Service) -> Synth002Service {
		Synth002Service(store: synth002Store, previous: synth001Service)
	}
}
