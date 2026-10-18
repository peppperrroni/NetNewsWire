//
//  SafeDIWiring.swift
//  Synth009 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth008

@Instantiable
extension Synth009Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth009Store {
		Synth009Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth009Service: Instantiable {
	public static func instantiate(synth009Store: Synth009Store, synth008Service: Synth008Service) -> Synth009Service {
		Synth009Service(store: synth009Store, previous: synth008Service)
	}
}
