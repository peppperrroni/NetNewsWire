//
//  SafeDIWiring.swift
//  Synth018 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth017

@Instantiable
extension Synth018Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth018Store {
		Synth018Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth018Service: Instantiable {
	public static func instantiate(synth018Store: Synth018Store, synth017Service: Synth017Service) -> Synth018Service {
		Synth018Service(store: synth018Store, previous: synth017Service)
	}
}
