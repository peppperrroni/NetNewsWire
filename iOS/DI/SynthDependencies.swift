//
//  SynthDependencies.swift
//  NetNewsWire-iOS
//
//  Wiring for the Phase 2b synthetic packages (16), in this variant's style.
//

import Foundation
import Swinject
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

@MainActor func registerSynth(_ c: Swinject.Container) {
	c.register(Synth001Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth001Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth001Service.self) { r in let store = r.resolve(Synth001Store.self)!; return onMain { Synth001Service(store: store) } }.inObjectScope(.container)
	c.register(Synth002Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth002Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth002Service.self) { r in let (store, previous) = (r.resolve(Synth002Store.self)!, r.resolve(Synth001Service.self)!); return onMain { Synth002Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth003Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth003Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth003Service.self) { r in let (store, previous) = (r.resolve(Synth003Store.self)!, r.resolve(Synth002Service.self)!); return onMain { Synth003Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth004Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth004Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth004Service.self) { r in let (store, previous) = (r.resolve(Synth004Store.self)!, r.resolve(Synth003Service.self)!); return onMain { Synth004Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth005Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth005Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth005Service.self) { r in let (store, previous) = (r.resolve(Synth005Store.self)!, r.resolve(Synth004Service.self)!); return onMain { Synth005Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth006Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth006Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth006Service.self) { r in let (store, previous) = (r.resolve(Synth006Store.self)!, r.resolve(Synth005Service.self)!); return onMain { Synth006Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth007Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth007Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth007Service.self) { r in let (store, previous) = (r.resolve(Synth007Store.self)!, r.resolve(Synth006Service.self)!); return onMain { Synth007Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth008Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth008Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth008Service.self) { r in let (store, previous) = (r.resolve(Synth008Store.self)!, r.resolve(Synth007Service.self)!); return onMain { Synth008Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth009Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth009Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth009Service.self) { r in let (store, previous) = (r.resolve(Synth009Store.self)!, r.resolve(Synth008Service.self)!); return onMain { Synth009Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth010Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth010Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth010Service.self) { r in let (store, previous) = (r.resolve(Synth010Store.self)!, r.resolve(Synth009Service.self)!); return onMain { Synth010Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth011Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth011Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth011Service.self) { r in let (store, previous) = (r.resolve(Synth011Store.self)!, r.resolve(Synth010Service.self)!); return onMain { Synth011Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth012Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth012Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth012Service.self) { r in let (store, previous) = (r.resolve(Synth012Store.self)!, r.resolve(Synth011Service.self)!); return onMain { Synth012Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth013Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth013Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth013Service.self) { r in let (store, previous) = (r.resolve(Synth013Store.self)!, r.resolve(Synth012Service.self)!); return onMain { Synth013Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth014Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth014Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth014Service.self) { r in let (store, previous) = (r.resolve(Synth014Store.self)!, r.resolve(Synth013Service.self)!); return onMain { Synth014Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth015Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth015Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth015Service.self) { r in let (store, previous) = (r.resolve(Synth015Store.self)!, r.resolve(Synth014Service.self)!); return onMain { Synth015Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth016Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth016Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth016Service.self) { r in let (store, previous) = (r.resolve(Synth016Store.self)!, r.resolve(Synth015Service.self)!); return onMain { Synth016Service(store: store, previous: previous) } }.inObjectScope(.container)
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

	init(container c: Swinject.Container) {
		synth001Store = c.resolve(Synth001Store.self)!
		synth001Service = c.resolve(Synth001Service.self)!
		synth002Store = c.resolve(Synth002Store.self)!
		synth002Service = c.resolve(Synth002Service.self)!
		synth003Store = c.resolve(Synth003Store.self)!
		synth003Service = c.resolve(Synth003Service.self)!
		synth004Store = c.resolve(Synth004Store.self)!
		synth004Service = c.resolve(Synth004Service.self)!
		synth005Store = c.resolve(Synth005Store.self)!
		synth005Service = c.resolve(Synth005Service.self)!
		synth006Store = c.resolve(Synth006Store.self)!
		synth006Service = c.resolve(Synth006Service.self)!
		synth007Store = c.resolve(Synth007Store.self)!
		synth007Service = c.resolve(Synth007Service.self)!
		synth008Store = c.resolve(Synth008Store.self)!
		synth008Service = c.resolve(Synth008Service.self)!
		synth009Store = c.resolve(Synth009Store.self)!
		synth009Service = c.resolve(Synth009Service.self)!
		synth010Store = c.resolve(Synth010Store.self)!
		synth010Service = c.resolve(Synth010Service.self)!
		synth011Store = c.resolve(Synth011Store.self)!
		synth011Service = c.resolve(Synth011Service.self)!
		synth012Store = c.resolve(Synth012Store.self)!
		synth012Service = c.resolve(Synth012Service.self)!
		synth013Store = c.resolve(Synth013Store.self)!
		synth013Service = c.resolve(Synth013Service.self)!
		synth014Store = c.resolve(Synth014Store.self)!
		synth014Service = c.resolve(Synth014Service.self)!
		synth015Store = c.resolve(Synth015Store.self)!
		synth015Service = c.resolve(Synth015Service.self)!
		synth016Store = c.resolve(Synth016Store.self)!
		synth016Service = c.resolve(Synth016Service.self)!
	}
}
