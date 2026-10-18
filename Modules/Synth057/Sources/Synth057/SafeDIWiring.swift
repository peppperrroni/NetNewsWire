//
//  SafeDIWiring.swift
//  Synth057 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth056

@Instantiable
extension Synth057Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth057Store {
		Synth057Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth057Service: Instantiable {
	public static func instantiate(synth057Store: Synth057Store, synth056Service: Synth056Service) -> Synth057Service {
		Synth057Service(store: synth057Store, previous: synth056Service)
	}
}
