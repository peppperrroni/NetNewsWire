//
//  SafeDIWiring.swift
//  Synth043 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth042

@Instantiable
extension Synth043Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth043Store {
		Synth043Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth043Service: Instantiable {
	public static func instantiate(synth043Store: Synth043Store, synth042Service: Synth042Service) -> Synth043Service {
		Synth043Service(store: synth043Store, previous: synth042Service)
	}
}
