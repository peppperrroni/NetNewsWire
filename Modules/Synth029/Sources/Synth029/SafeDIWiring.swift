//
//  SafeDIWiring.swift
//  Synth029 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth028

@Instantiable
extension Synth029Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth029Store {
		Synth029Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth029Service: Instantiable {
	public static func instantiate(synth029Store: Synth029Store, synth028Service: Synth028Service) -> Synth029Service {
		Synth029Service(store: synth029Store, previous: synth028Service)
	}
}
