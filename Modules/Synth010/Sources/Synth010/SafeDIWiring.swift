//
//  SafeDIWiring.swift
//  Synth010 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth009

@Instantiable
extension Synth010Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth010Store {
		Synth010Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth010Service: Instantiable {
	public static func instantiate(synth010Store: Synth010Store, synth009Service: Synth009Service) -> Synth010Service {
		Synth010Service(store: synth010Store, previous: synth009Service)
	}
}
