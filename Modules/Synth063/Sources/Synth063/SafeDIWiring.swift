//
//  SafeDIWiring.swift
//  Synth063 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth062

@Instantiable
extension Synth063Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth063Store {
		Synth063Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth063Service: Instantiable {
	public static func instantiate(synth063Store: Synth063Store, synth062Service: Synth062Service) -> Synth063Service {
		Synth063Service(store: synth063Store, previous: synth062Service)
	}
}
