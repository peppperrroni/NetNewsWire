//
//  SafeDIWiring.swift
//  Synth044 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth043

@Instantiable
extension Synth044Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth044Store {
		Synth044Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth044Service: Instantiable {
	public static func instantiate(synth044Store: Synth044Store, synth043Service: Synth043Service) -> Synth044Service {
		Synth044Service(store: synth044Store, previous: synth043Service)
	}
}
