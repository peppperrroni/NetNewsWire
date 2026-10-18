//
//  SafeDIWiring.swift
//  Synth031 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth030

@Instantiable
extension Synth031Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth031Store {
		Synth031Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth031Service: Instantiable {
	public static func instantiate(synth031Store: Synth031Store, synth030Service: Synth030Service) -> Synth031Service {
		Synth031Service(store: synth031Store, previous: synth030Service)
	}
}
