//
//  SafeDIWiring.swift
//  Synth050 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth049

@Instantiable
extension Synth050Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth050Store {
		Synth050Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth050Service: Instantiable {
	public static func instantiate(synth050Store: Synth050Store, synth049Service: Synth049Service) -> Synth050Service {
		Synth050Service(store: synth050Store, previous: synth049Service)
	}
}
