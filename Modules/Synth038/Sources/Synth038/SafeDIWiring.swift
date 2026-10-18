//
//  SafeDIWiring.swift
//  Synth038 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth037

@Instantiable
extension Synth038Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth038Store {
		Synth038Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth038Service: Instantiable {
	public static func instantiate(synth038Store: Synth038Store, synth037Service: Synth037Service) -> Synth038Service {
		Synth038Service(store: synth038Store, previous: synth037Service)
	}
}
