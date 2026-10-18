//
//  SafeDIWiring.swift
//  Synth027 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth026

@Instantiable
extension Synth027Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth027Store {
		Synth027Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth027Service: Instantiable {
	public static func instantiate(synth027Store: Synth027Store, synth026Service: Synth026Service) -> Synth027Service {
		Synth027Service(store: synth027Store, previous: synth026Service)
	}
}
