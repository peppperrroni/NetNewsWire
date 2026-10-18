//
//  SafeDIWiring.swift
//  Synth019 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth018

@Instantiable
extension Synth019Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth019Store {
		Synth019Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth019Service: Instantiable {
	public static func instantiate(synth019Store: Synth019Store, synth018Service: Synth018Service) -> Synth019Service {
		Synth019Service(store: synth019Store, previous: synth018Service)
	}
}
