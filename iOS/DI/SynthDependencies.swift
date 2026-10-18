//
//  SynthDependencies.swift
//  NetNewsWire-iOS
//
//  Wiring for the Phase 2b synthetic packages (16), in this variant's style.
//

import Foundation
import NeedleFoundation
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

extension AppComponent {

	public var synth001Store: Synth001Store {
		let activityLog = activityLog
		return shared { MainActor.assumeIsolated { Synth001Store(activityLog: activityLog) } }
	}

	public var synth001Service: Synth001Service {
		let store = synth001Store
		return shared { MainActor.assumeIsolated { Synth001Service(store: store) } }
	}

	public var synth002Store: Synth002Store {
		let activityLog = activityLog
		return shared { MainActor.assumeIsolated { Synth002Store(activityLog: activityLog) } }
	}

	public var synth002Service: Synth002Service {
		let store = synth002Store
		let previous = synth001Service
		return shared { MainActor.assumeIsolated { Synth002Service(store: store, previous: previous) } }
	}

	public var synth003Store: Synth003Store {
		let activityLog = activityLog
		return shared { MainActor.assumeIsolated { Synth003Store(activityLog: activityLog) } }
	}

	public var synth003Service: Synth003Service {
		let store = synth003Store
		let previous = synth002Service
		return shared { MainActor.assumeIsolated { Synth003Service(store: store, previous: previous) } }
	}

	public var synth004Store: Synth004Store {
		let activityLog = activityLog
		return shared { MainActor.assumeIsolated { Synth004Store(activityLog: activityLog) } }
	}

	public var synth004Service: Synth004Service {
		let store = synth004Store
		let previous = synth003Service
		return shared { MainActor.assumeIsolated { Synth004Service(store: store, previous: previous) } }
	}

	public var synth005Store: Synth005Store {
		let activityLog = activityLog
		return shared { MainActor.assumeIsolated { Synth005Store(activityLog: activityLog) } }
	}

	public var synth005Service: Synth005Service {
		let store = synth005Store
		let previous = synth004Service
		return shared { MainActor.assumeIsolated { Synth005Service(store: store, previous: previous) } }
	}

	public var synth006Store: Synth006Store {
		let activityLog = activityLog
		return shared { MainActor.assumeIsolated { Synth006Store(activityLog: activityLog) } }
	}

	public var synth006Service: Synth006Service {
		let store = synth006Store
		let previous = synth005Service
		return shared { MainActor.assumeIsolated { Synth006Service(store: store, previous: previous) } }
	}

	public var synth007Store: Synth007Store {
		let activityLog = activityLog
		return shared { MainActor.assumeIsolated { Synth007Store(activityLog: activityLog) } }
	}

	public var synth007Service: Synth007Service {
		let store = synth007Store
		let previous = synth006Service
		return shared { MainActor.assumeIsolated { Synth007Service(store: store, previous: previous) } }
	}

	public var synth008Store: Synth008Store {
		let activityLog = activityLog
		return shared { MainActor.assumeIsolated { Synth008Store(activityLog: activityLog) } }
	}

	public var synth008Service: Synth008Service {
		let store = synth008Store
		let previous = synth007Service
		return shared { MainActor.assumeIsolated { Synth008Service(store: store, previous: previous) } }
	}

	public var synth009Store: Synth009Store {
		let activityLog = activityLog
		return shared { MainActor.assumeIsolated { Synth009Store(activityLog: activityLog) } }
	}

	public var synth009Service: Synth009Service {
		let store = synth009Store
		let previous = synth008Service
		return shared { MainActor.assumeIsolated { Synth009Service(store: store, previous: previous) } }
	}

	public var synth010Store: Synth010Store {
		let activityLog = activityLog
		return shared { MainActor.assumeIsolated { Synth010Store(activityLog: activityLog) } }
	}

	public var synth010Service: Synth010Service {
		let store = synth010Store
		let previous = synth009Service
		return shared { MainActor.assumeIsolated { Synth010Service(store: store, previous: previous) } }
	}

	public var synth011Store: Synth011Store {
		let activityLog = activityLog
		return shared { MainActor.assumeIsolated { Synth011Store(activityLog: activityLog) } }
	}

	public var synth011Service: Synth011Service {
		let store = synth011Store
		let previous = synth010Service
		return shared { MainActor.assumeIsolated { Synth011Service(store: store, previous: previous) } }
	}

	public var synth012Store: Synth012Store {
		let activityLog = activityLog
		return shared { MainActor.assumeIsolated { Synth012Store(activityLog: activityLog) } }
	}

	public var synth012Service: Synth012Service {
		let store = synth012Store
		let previous = synth011Service
		return shared { MainActor.assumeIsolated { Synth012Service(store: store, previous: previous) } }
	}

	public var synth013Store: Synth013Store {
		let activityLog = activityLog
		return shared { MainActor.assumeIsolated { Synth013Store(activityLog: activityLog) } }
	}

	public var synth013Service: Synth013Service {
		let store = synth013Store
		let previous = synth012Service
		return shared { MainActor.assumeIsolated { Synth013Service(store: store, previous: previous) } }
	}

	public var synth014Store: Synth014Store {
		let activityLog = activityLog
		return shared { MainActor.assumeIsolated { Synth014Store(activityLog: activityLog) } }
	}

	public var synth014Service: Synth014Service {
		let store = synth014Store
		let previous = synth013Service
		return shared { MainActor.assumeIsolated { Synth014Service(store: store, previous: previous) } }
	}

	public var synth015Store: Synth015Store {
		let activityLog = activityLog
		return shared { MainActor.assumeIsolated { Synth015Store(activityLog: activityLog) } }
	}

	public var synth015Service: Synth015Service {
		let store = synth015Store
		let previous = synth014Service
		return shared { MainActor.assumeIsolated { Synth015Service(store: store, previous: previous) } }
	}

	public var synth016Store: Synth016Store {
		let activityLog = activityLog
		return shared { MainActor.assumeIsolated { Synth016Store(activityLog: activityLog) } }
	}

	public var synth016Service: Synth016Service {
		let store = synth016Store
		let previous = synth015Service
		return shared { MainActor.assumeIsolated { Synth016Service(store: store, previous: previous) } }
	}
}

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

	init(component c: AppComponent) {
		synth001Store = c.synth001Store
		synth001Service = c.synth001Service
		synth002Store = c.synth002Store
		synth002Service = c.synth002Service
		synth003Store = c.synth003Store
		synth003Service = c.synth003Service
		synth004Store = c.synth004Store
		synth004Service = c.synth004Service
		synth005Store = c.synth005Store
		synth005Service = c.synth005Service
		synth006Store = c.synth006Store
		synth006Service = c.synth006Service
		synth007Store = c.synth007Store
		synth007Service = c.synth007Service
		synth008Store = c.synth008Store
		synth008Service = c.synth008Service
		synth009Store = c.synth009Store
		synth009Service = c.synth009Service
		synth010Store = c.synth010Store
		synth010Service = c.synth010Service
		synth011Store = c.synth011Store
		synth011Service = c.synth011Service
		synth012Store = c.synth012Store
		synth012Service = c.synth012Service
		synth013Store = c.synth013Store
		synth013Service = c.synth013Service
		synth014Store = c.synth014Store
		synth014Service = c.synth014Service
		synth015Store = c.synth015Store
		synth015Service = c.synth015Service
		synth016Store = c.synth016Store
		synth016Service = c.synth016Service
	}
}
