//
//  SafeDIWiring.swift
//  Synth032 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth031

@Instantiable
extension Synth032Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth032Store {
		Synth032Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth032Service: Instantiable {
	public static func instantiate(synth032Store: Synth032Store, synth031Service: Synth031Service) -> Synth032Service {
		Synth032Service(store: synth032Store, previous: synth031Service)
	}
}
