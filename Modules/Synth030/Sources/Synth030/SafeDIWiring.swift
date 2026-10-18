//
//  SafeDIWiring.swift
//  Synth030 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth029

@Instantiable
extension Synth030Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth030Store {
		Synth030Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth030Service: Instantiable {
	public static func instantiate(synth030Store: Synth030Store, synth029Service: Synth029Service) -> Synth030Service {
		Synth030Service(store: synth030Store, previous: synth029Service)
	}
}
