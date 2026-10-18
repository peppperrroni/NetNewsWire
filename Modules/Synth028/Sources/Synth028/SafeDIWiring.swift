//
//  SafeDIWiring.swift
//  Synth028 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth027

@Instantiable
extension Synth028Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth028Store {
		Synth028Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth028Service: Instantiable {
	public static func instantiate(synth028Store: Synth028Store, synth027Service: Synth027Service) -> Synth028Service {
		Synth028Service(store: synth028Store, previous: synth027Service)
	}
}
