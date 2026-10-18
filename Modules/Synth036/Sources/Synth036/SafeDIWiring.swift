//
//  SafeDIWiring.swift
//  Synth036 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth035

@Instantiable
extension Synth036Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth036Store {
		Synth036Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth036Service: Instantiable {
	public static func instantiate(synth036Store: Synth036Store, synth035Service: Synth035Service) -> Synth036Service {
		Synth036Service(store: synth036Store, previous: synth035Service)
	}
}
