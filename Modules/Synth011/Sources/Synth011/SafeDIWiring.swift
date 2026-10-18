//
//  SafeDIWiring.swift
//  Synth011 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth010

@Instantiable
extension Synth011Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth011Store {
		Synth011Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth011Service: Instantiable {
	public static func instantiate(synth011Store: Synth011Store, synth010Service: Synth010Service) -> Synth011Service {
		Synth011Service(store: synth011Store, previous: synth010Service)
	}
}
