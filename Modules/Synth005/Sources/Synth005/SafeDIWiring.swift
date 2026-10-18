//
//  SafeDIWiring.swift
//  Synth005 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth004

@Instantiable
extension Synth005Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth005Store {
		Synth005Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth005Service: Instantiable {
	public static func instantiate(synth005Store: Synth005Store, synth004Service: Synth004Service) -> Synth005Service {
		Synth005Service(store: synth005Store, previous: synth004Service)
	}
}
