//
//  SafeDIWiring.swift
//  Synth007 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth006

@Instantiable
extension Synth007Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth007Store {
		Synth007Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth007Service: Instantiable {
	public static func instantiate(synth007Store: Synth007Store, synth006Service: Synth006Service) -> Synth007Service {
		Synth007Service(store: synth007Store, previous: synth006Service)
	}
}
