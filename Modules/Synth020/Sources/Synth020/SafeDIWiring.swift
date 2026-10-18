//
//  SafeDIWiring.swift
//  Synth020 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth019

@Instantiable
extension Synth020Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth020Store {
		Synth020Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth020Service: Instantiable {
	public static func instantiate(synth020Store: Synth020Store, synth019Service: Synth019Service) -> Synth020Service {
		Synth020Service(store: synth020Store, previous: synth019Service)
	}
}
