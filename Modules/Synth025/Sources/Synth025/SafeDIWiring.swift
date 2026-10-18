//
//  SafeDIWiring.swift
//  Synth025 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth024

@Instantiable
extension Synth025Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth025Store {
		Synth025Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth025Service: Instantiable {
	public static func instantiate(synth025Store: Synth025Store, synth024Service: Synth024Service) -> Synth025Service {
		Synth025Service(store: synth025Store, previous: synth024Service)
	}
}
