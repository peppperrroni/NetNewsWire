//
//  SynthDependencies.swift
//  NetNewsWire-iOS
//
//  Wiring for the Phase 2b synthetic packages (16), in this variant's style.
//

import Foundation
import ActivityLog
import Synth001
import Synth002
import Synth003
import Synth004
import Synth005
import Synth006
import Synth007
import Synth008
import Synth009
import Synth010
import Synth011
import Synth012
import Synth013
import Synth014
import Synth015
import Synth016

@MainActor final class SynthServices {

	let synth001Store: Synth001Store
	let synth001Service: Synth001Service
	let synth002Store: Synth002Store
	let synth002Service: Synth002Service
	let synth003Store: Synth003Store
	let synth003Service: Synth003Service
	let synth004Store: Synth004Store
	let synth004Service: Synth004Service
	let synth005Store: Synth005Store
	let synth005Service: Synth005Service
	let synth006Store: Synth006Store
	let synth006Service: Synth006Service
	let synth007Store: Synth007Store
	let synth007Service: Synth007Service
	let synth008Store: Synth008Store
	let synth008Service: Synth008Service
	let synth009Store: Synth009Store
	let synth009Service: Synth009Service
	let synth010Store: Synth010Store
	let synth010Service: Synth010Service
	let synth011Store: Synth011Store
	let synth011Service: Synth011Service
	let synth012Store: Synth012Store
	let synth012Service: Synth012Service
	let synth013Store: Synth013Store
	let synth013Service: Synth013Service
	let synth014Store: Synth014Store
	let synth014Service: Synth014Service
	let synth015Store: Synth015Store
	let synth015Service: Synth015Service
	let synth016Store: Synth016Store
	let synth016Service: Synth016Service

	init(activityLog: ActivityLog) {
		synth001Store = Synth001Store(activityLog: activityLog)
		synth001Service = Synth001Service(store: synth001Store)
		synth002Store = Synth002Store(activityLog: activityLog)
		synth002Service = Synth002Service(store: synth002Store, previous: synth001Service)
		synth003Store = Synth003Store(activityLog: activityLog)
		synth003Service = Synth003Service(store: synth003Store, previous: synth002Service)
		synth004Store = Synth004Store(activityLog: activityLog)
		synth004Service = Synth004Service(store: synth004Store, previous: synth003Service)
		synth005Store = Synth005Store(activityLog: activityLog)
		synth005Service = Synth005Service(store: synth005Store, previous: synth004Service)
		synth006Store = Synth006Store(activityLog: activityLog)
		synth006Service = Synth006Service(store: synth006Store, previous: synth005Service)
		synth007Store = Synth007Store(activityLog: activityLog)
		synth007Service = Synth007Service(store: synth007Store, previous: synth006Service)
		synth008Store = Synth008Store(activityLog: activityLog)
		synth008Service = Synth008Service(store: synth008Store, previous: synth007Service)
		synth009Store = Synth009Store(activityLog: activityLog)
		synth009Service = Synth009Service(store: synth009Store, previous: synth008Service)
		synth010Store = Synth010Store(activityLog: activityLog)
		synth010Service = Synth010Service(store: synth010Store, previous: synth009Service)
		synth011Store = Synth011Store(activityLog: activityLog)
		synth011Service = Synth011Service(store: synth011Store, previous: synth010Service)
		synth012Store = Synth012Store(activityLog: activityLog)
		synth012Service = Synth012Service(store: synth012Store, previous: synth011Service)
		synth013Store = Synth013Store(activityLog: activityLog)
		synth013Service = Synth013Service(store: synth013Store, previous: synth012Service)
		synth014Store = Synth014Store(activityLog: activityLog)
		synth014Service = Synth014Service(store: synth014Store, previous: synth013Service)
		synth015Store = Synth015Store(activityLog: activityLog)
		synth015Service = Synth015Service(store: synth015Store, previous: synth014Service)
		synth016Store = Synth016Store(activityLog: activityLog)
		synth016Service = Synth016Service(store: synth016Store, previous: synth015Service)
	}
}
