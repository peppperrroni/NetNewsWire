//
//  SafeDIWiring.swift
//  Synth012 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth011

@Instantiable
extension Synth012Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth012Store {
		Synth012Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth012Service: Instantiable {
	public static func instantiate(synth012Store: Synth012Store, synth011Service: Synth011Service) -> Synth012Service {
		Synth012Service(store: synth012Store, previous: synth011Service)
	}
}
