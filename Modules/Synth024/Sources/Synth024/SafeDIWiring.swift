//
//  SafeDIWiring.swift
//  Synth024 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth023

@Instantiable
extension Synth024Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth024Store {
		Synth024Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth024Service: Instantiable {
	public static func instantiate(synth024Store: Synth024Store, synth023Service: Synth023Service) -> Synth024Service {
		Synth024Service(store: synth024Store, previous: synth023Service)
	}
}
