//
//  SafeDIWiring.swift
//  Synth003 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth002

@Instantiable
extension Synth003Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth003Store {
		Synth003Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth003Service: Instantiable {
	public static func instantiate(synth003Store: Synth003Store, synth002Service: Synth002Service) -> Synth003Service {
		Synth003Service(store: synth003Store, previous: synth002Service)
	}
}
