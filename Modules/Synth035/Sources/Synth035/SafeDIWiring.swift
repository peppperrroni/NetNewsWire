//
//  SafeDIWiring.swift
//  Synth035 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth034

@Instantiable
extension Synth035Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth035Store {
		Synth035Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth035Service: Instantiable {
	public static func instantiate(synth035Store: Synth035Store, synth034Service: Synth034Service) -> Synth035Service {
		Synth035Service(store: synth035Store, previous: synth034Service)
	}
}
