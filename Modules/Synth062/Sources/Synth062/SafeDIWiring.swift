//
//  SafeDIWiring.swift
//  Synth062 (synthetic, Phase 2b; safedi-pkg wiring lives with the types)
//

import Foundation
import SafeDI
import ActivityLog
import Synth061

@Instantiable
extension Synth062Store: Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth062Store {
		Synth062Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth062Service: Instantiable {
	public static func instantiate(synth062Store: Synth062Store, synth061Service: Synth061Service) -> Synth062Service {
		Synth062Service(store: synth062Store, previous: synth061Service)
	}
}
