//
//  SafeDIWiring.swift
//  Synth006 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth005

@Instantiable
extension Synth006Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth006Store {
		Synth006Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth006Service: Instantiable {
	public static func instantiate(synth006Store: Synth006Store, synth005Service: Synth005Service) -> Synth006Service {
		Synth006Service(store: synth006Store, previous: synth005Service)
	}
}
