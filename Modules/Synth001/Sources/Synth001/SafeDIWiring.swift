//
//  SafeDIWiring.swift
//  Synth001 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog

@Instantiable
extension Synth001Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth001Store {
		Synth001Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth001Service: Instantiable {
	public static func instantiate(synth001Store: Synth001Store) -> Synth001Service {
		Synth001Service(store: synth001Store)
	}
}
