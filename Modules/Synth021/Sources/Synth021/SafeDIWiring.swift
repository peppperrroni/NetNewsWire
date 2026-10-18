//
//  SafeDIWiring.swift
//  Synth021 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth020

@Instantiable
extension Synth021Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth021Store {
		Synth021Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth021Service: Instantiable {
	public static func instantiate(synth021Store: Synth021Store, synth020Service: Synth020Service) -> Synth021Service {
		Synth021Service(store: synth021Store, previous: synth020Service)
	}
}
