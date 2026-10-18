//
//  SafeDIWiring.swift
//  Synth016 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth015

@Instantiable
extension Synth016Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth016Store {
		Synth016Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth016Service: Instantiable {
	public static func instantiate(synth016Store: Synth016Store, synth015Service: Synth015Service) -> Synth016Service {
		Synth016Service(store: synth016Store, previous: synth015Service)
	}
}
