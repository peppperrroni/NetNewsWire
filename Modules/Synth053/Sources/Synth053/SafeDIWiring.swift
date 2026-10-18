//
//  SafeDIWiring.swift
//  Synth053 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth052

@Instantiable
extension Synth053Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth053Store {
		Synth053Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth053Service: Instantiable {
	public static func instantiate(synth053Store: Synth053Store, synth052Service: Synth052Service) -> Synth053Service {
		Synth053Service(store: synth053Store, previous: synth052Service)
	}
}
