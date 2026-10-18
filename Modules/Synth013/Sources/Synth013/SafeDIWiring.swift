//
//  SafeDIWiring.swift
//  Synth013 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth012

@Instantiable
extension Synth013Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth013Store {
		Synth013Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth013Service: Instantiable {
	public static func instantiate(synth013Store: Synth013Store, synth012Service: Synth012Service) -> Synth013Service {
		Synth013Service(store: synth013Store, previous: synth012Service)
	}
}
