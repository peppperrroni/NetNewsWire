//
//  SafeDIWiring.swift
//  Synth051 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth050

@Instantiable
extension Synth051Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth051Store {
		Synth051Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth051Service: Instantiable {
	public static func instantiate(synth051Store: Synth051Store, synth050Service: Synth050Service) -> Synth051Service {
		Synth051Service(store: synth051Store, previous: synth050Service)
	}
}
