//
//  SafeDIWiring.swift
//  Synth017 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth016

@Instantiable
extension Synth017Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth017Store {
		Synth017Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth017Service: Instantiable {
	public static func instantiate(synth017Store: Synth017Store, synth016Service: Synth016Service) -> Synth017Service {
		Synth017Service(store: synth017Store, previous: synth016Service)
	}
}
