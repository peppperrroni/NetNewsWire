//
//  SafeDIWiring.swift
//  Synth039 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth038

@Instantiable
extension Synth039Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth039Store {
		Synth039Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth039Service: Instantiable {
	public static func instantiate(synth039Store: Synth039Store, synth038Service: Synth038Service) -> Synth039Service {
		Synth039Service(store: synth039Store, previous: synth038Service)
	}
}
