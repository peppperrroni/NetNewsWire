//
//  SafeDIWiring.swift
//  Synth014 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth013

@Instantiable
extension Synth014Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth014Store {
		Synth014Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth014Service: Instantiable {
	public static func instantiate(synth014Store: Synth014Store, synth013Service: Synth013Service) -> Synth014Service {
		Synth014Service(store: synth014Store, previous: synth013Service)
	}
}
