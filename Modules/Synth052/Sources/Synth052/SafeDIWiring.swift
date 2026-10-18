//
//  SafeDIWiring.swift
//  Synth052 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth051

@Instantiable
extension Synth052Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth052Store {
		Synth052Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth052Service: Instantiable {
	public static func instantiate(synth052Store: Synth052Store, synth051Service: Synth051Service) -> Synth052Service {
		Synth052Service(store: synth052Store, previous: synth051Service)
	}
}
