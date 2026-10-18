//
//  SafeDIWiring.swift
//  Synth023 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth022

@Instantiable
extension Synth023Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth023Store {
		Synth023Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth023Service: Instantiable {
	public static func instantiate(synth023Store: Synth023Store, synth022Service: Synth022Service) -> Synth023Service {
		Synth023Service(store: synth023Store, previous: synth022Service)
	}
}
