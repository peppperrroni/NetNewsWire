//
//  SafeDIWiring.swift
//  Synth055 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth054

@Instantiable
extension Synth055Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth055Store {
		Synth055Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth055Service: Instantiable {
	public static func instantiate(synth055Store: Synth055Store, synth054Service: Synth054Service) -> Synth055Service {
		Synth055Service(store: synth055Store, previous: synth054Service)
	}
}
