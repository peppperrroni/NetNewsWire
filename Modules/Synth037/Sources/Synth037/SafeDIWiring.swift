//
//  SafeDIWiring.swift
//  Synth037 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth036

@Instantiable
extension Synth037Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth037Store {
		Synth037Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth037Service: Instantiable {
	public static func instantiate(synth037Store: Synth037Store, synth036Service: Synth036Service) -> Synth037Service {
		Synth037Service(store: synth037Store, previous: synth036Service)
	}
}
