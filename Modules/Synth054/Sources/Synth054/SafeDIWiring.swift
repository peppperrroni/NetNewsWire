//
//  SafeDIWiring.swift
//  Synth054 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth053

@Instantiable
extension Synth054Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth054Store {
		Synth054Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth054Service: Instantiable {
	public static func instantiate(synth054Store: Synth054Store, synth053Service: Synth053Service) -> Synth054Service {
		Synth054Service(store: synth054Store, previous: synth053Service)
	}
}
