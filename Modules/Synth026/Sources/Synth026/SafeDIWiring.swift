//
//  SafeDIWiring.swift
//  Synth026 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth025

@Instantiable
extension Synth026Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth026Store {
		Synth026Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth026Service: Instantiable {
	public static func instantiate(synth026Store: Synth026Store, synth025Service: Synth025Service) -> Synth026Service {
		Synth026Service(store: synth026Store, previous: synth025Service)
	}
}
