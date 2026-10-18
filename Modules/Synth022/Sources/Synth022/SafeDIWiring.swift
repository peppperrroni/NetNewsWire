//
//  SafeDIWiring.swift
//  Synth022 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth021

@Instantiable
extension Synth022Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth022Store {
		Synth022Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth022Service: Instantiable {
	public static func instantiate(synth022Store: Synth022Store, synth021Service: Synth021Service) -> Synth022Service {
		Synth022Service(store: synth022Store, previous: synth021Service)
	}
}
