//
//  SafeDIWiring.swift
//  Synth058 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth057

@Instantiable
extension Synth058Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth058Store {
		Synth058Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth058Service: Instantiable {
	public static func instantiate(synth058Store: Synth058Store, synth057Service: Synth057Service) -> Synth058Service {
		Synth058Service(store: synth058Store, previous: synth057Service)
	}
}
