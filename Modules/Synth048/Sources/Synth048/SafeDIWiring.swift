//
//  SafeDIWiring.swift
//  Synth048 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth047

@Instantiable
extension Synth048Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth048Store {
		Synth048Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth048Service: Instantiable {
	public static func instantiate(synth048Store: Synth048Store, synth047Service: Synth047Service) -> Synth048Service {
		Synth048Service(store: synth048Store, previous: synth047Service)
	}
}
