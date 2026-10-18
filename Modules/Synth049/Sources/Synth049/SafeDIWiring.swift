//
//  SafeDIWiring.swift
//  Synth049 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth048

@Instantiable
extension Synth049Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth049Store {
		Synth049Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth049Service: Instantiable {
	public static func instantiate(synth049Store: Synth049Store, synth048Service: Synth048Service) -> Synth049Service {
		Synth049Service(store: synth049Store, previous: synth048Service)
	}
}
