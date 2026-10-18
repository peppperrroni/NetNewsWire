//
//  SafeDIWiring.swift
//  Synth033 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth032

@Instantiable
extension Synth033Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth033Store {
		Synth033Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth033Service: Instantiable {
	public static func instantiate(synth033Store: Synth033Store, synth032Service: Synth032Service) -> Synth033Service {
		Synth033Service(store: synth033Store, previous: synth032Service)
	}
}
