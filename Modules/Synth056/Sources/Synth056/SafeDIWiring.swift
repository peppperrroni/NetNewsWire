//
//  SafeDIWiring.swift
//  Synth056 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth055

@Instantiable
extension Synth056Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth056Store {
		Synth056Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth056Service: Instantiable {
	public static func instantiate(synth056Store: Synth056Store, synth055Service: Synth055Service) -> Synth056Service {
		Synth056Service(store: synth056Store, previous: synth055Service)
	}
}
