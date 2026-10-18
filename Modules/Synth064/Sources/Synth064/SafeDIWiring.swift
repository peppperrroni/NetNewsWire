//
//  SafeDIWiring.swift
//  Synth064 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth063

@Instantiable
extension Synth064Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth064Store {
		Synth064Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth064Service: Instantiable {
	public static func instantiate(synth064Store: Synth064Store, synth063Service: Synth063Service) -> Synth064Service {
		Synth064Service(store: synth064Store, previous: synth063Service)
	}
}
