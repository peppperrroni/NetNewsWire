//
//  SafeDIWiring.swift
//  Synth041 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth040

@Instantiable
extension Synth041Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth041Store {
		Synth041Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth041Service: Instantiable {
	public static func instantiate(synth041Store: Synth041Store, synth040Service: Synth040Service) -> Synth041Service {
		Synth041Service(store: synth041Store, previous: synth040Service)
	}
}
