//
//  SafeDIWiring.swift
//  Synth015 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth014

@Instantiable
extension Synth015Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth015Store {
		Synth015Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth015Service: Instantiable {
	public static func instantiate(synth015Store: Synth015Store, synth014Service: Synth014Service) -> Synth015Service {
		Synth015Service(store: synth015Store, previous: synth014Service)
	}
}
