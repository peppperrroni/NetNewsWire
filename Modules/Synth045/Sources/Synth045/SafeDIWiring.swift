//
//  SafeDIWiring.swift
//  Synth045 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth044

@Instantiable
extension Synth045Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth045Store {
		Synth045Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth045Service: Instantiable {
	public static func instantiate(synth045Store: Synth045Store, synth044Service: Synth044Service) -> Synth045Service {
		Synth045Service(store: synth045Store, previous: synth044Service)
	}
}
