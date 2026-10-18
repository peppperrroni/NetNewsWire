//
//  SafeDIWiring.swift
//  Synth034 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth033

@Instantiable
extension Synth034Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth034Store {
		Synth034Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth034Service: Instantiable {
	public static func instantiate(synth034Store: Synth034Store, synth033Service: Synth033Service) -> Synth034Service {
		Synth034Service(store: synth034Store, previous: synth033Service)
	}
}
