//
//  SafeDIWiring.swift
//  Synth046 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth045

@Instantiable
extension Synth046Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth046Store {
		Synth046Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth046Service: Instantiable {
	public static func instantiate(synth046Store: Synth046Store, synth045Service: Synth045Service) -> Synth046Service {
		Synth046Service(store: synth046Store, previous: synth045Service)
	}
}
