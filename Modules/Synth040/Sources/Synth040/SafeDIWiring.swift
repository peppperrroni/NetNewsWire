//
//  SafeDIWiring.swift
//  Synth040 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth039

@Instantiable
extension Synth040Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth040Store {
		Synth040Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth040Service: Instantiable {
	public static func instantiate(synth040Store: Synth040Store, synth039Service: Synth039Service) -> Synth040Service {
		Synth040Service(store: synth040Store, previous: synth039Service)
	}
}
