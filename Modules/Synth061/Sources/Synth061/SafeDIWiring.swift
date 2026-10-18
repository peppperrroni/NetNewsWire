//
//  SafeDIWiring.swift
//  Synth061 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth060

@Instantiable
extension Synth061Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth061Store {
		Synth061Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth061Service: Instantiable {
	public static func instantiate(synth061Store: Synth061Store, synth060Service: Synth060Service) -> Synth061Service {
		Synth061Service(store: synth061Store, previous: synth060Service)
	}
}
