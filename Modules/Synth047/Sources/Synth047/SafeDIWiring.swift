//
//  SafeDIWiring.swift
//  Synth047 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth046

@Instantiable
extension Synth047Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth047Store {
		Synth047Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth047Service: Instantiable {
	public static func instantiate(synth047Store: Synth047Store, synth046Service: Synth046Service) -> Synth047Service {
		Synth047Service(store: synth047Store, previous: synth046Service)
	}
}
