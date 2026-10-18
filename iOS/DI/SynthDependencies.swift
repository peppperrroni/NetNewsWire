//
//  SynthDependencies.swift
//  NetNewsWire-iOS
//
//  Wiring for the Phase 2b synthetic packages (32), in this variant's style.
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
import Synth017
import Synth018
import Synth019
import Synth020
import Synth021
import Synth022
import Synth023
import Synth024
import Synth025
import Synth026
import Synth027
import Synth028
import Synth029
import Synth030
import Synth031
import Synth032

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
	c.register(Synth017Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth017Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth017Service.self) { r in let (store, previous) = (r.resolve(Synth017Store.self)!, r.resolve(Synth016Service.self)!); return onMain { Synth017Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth018Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth018Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth018Service.self) { r in let (store, previous) = (r.resolve(Synth018Store.self)!, r.resolve(Synth017Service.self)!); return onMain { Synth018Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth019Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth019Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth019Service.self) { r in let (store, previous) = (r.resolve(Synth019Store.self)!, r.resolve(Synth018Service.self)!); return onMain { Synth019Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth020Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth020Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth020Service.self) { r in let (store, previous) = (r.resolve(Synth020Store.self)!, r.resolve(Synth019Service.self)!); return onMain { Synth020Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth021Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth021Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth021Service.self) { r in let (store, previous) = (r.resolve(Synth021Store.self)!, r.resolve(Synth020Service.self)!); return onMain { Synth021Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth022Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth022Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth022Service.self) { r in let (store, previous) = (r.resolve(Synth022Store.self)!, r.resolve(Synth021Service.self)!); return onMain { Synth022Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth023Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth023Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth023Service.self) { r in let (store, previous) = (r.resolve(Synth023Store.self)!, r.resolve(Synth022Service.self)!); return onMain { Synth023Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth024Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth024Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth024Service.self) { r in let (store, previous) = (r.resolve(Synth024Store.self)!, r.resolve(Synth023Service.self)!); return onMain { Synth024Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth025Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth025Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth025Service.self) { r in let (store, previous) = (r.resolve(Synth025Store.self)!, r.resolve(Synth024Service.self)!); return onMain { Synth025Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth026Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth026Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth026Service.self) { r in let (store, previous) = (r.resolve(Synth026Store.self)!, r.resolve(Synth025Service.self)!); return onMain { Synth026Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth027Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth027Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth027Service.self) { r in let (store, previous) = (r.resolve(Synth027Store.self)!, r.resolve(Synth026Service.self)!); return onMain { Synth027Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth028Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth028Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth028Service.self) { r in let (store, previous) = (r.resolve(Synth028Store.self)!, r.resolve(Synth027Service.self)!); return onMain { Synth028Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth029Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth029Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth029Service.self) { r in let (store, previous) = (r.resolve(Synth029Store.self)!, r.resolve(Synth028Service.self)!); return onMain { Synth029Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth030Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth030Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth030Service.self) { r in let (store, previous) = (r.resolve(Synth030Store.self)!, r.resolve(Synth029Service.self)!); return onMain { Synth030Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth031Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth031Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth031Service.self) { r in let (store, previous) = (r.resolve(Synth031Store.self)!, r.resolve(Synth030Service.self)!); return onMain { Synth031Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth032Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth032Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth032Service.self) { r in let (store, previous) = (r.resolve(Synth032Store.self)!, r.resolve(Synth031Service.self)!); return onMain { Synth032Service(store: store, previous: previous) } }.inObjectScope(.container)
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
	let synth017Store: Synth017Store
	let synth017Service: Synth017Service
	let synth018Store: Synth018Store
	let synth018Service: Synth018Service
	let synth019Store: Synth019Store
	let synth019Service: Synth019Service
	let synth020Store: Synth020Store
	let synth020Service: Synth020Service
	let synth021Store: Synth021Store
	let synth021Service: Synth021Service
	let synth022Store: Synth022Store
	let synth022Service: Synth022Service
	let synth023Store: Synth023Store
	let synth023Service: Synth023Service
	let synth024Store: Synth024Store
	let synth024Service: Synth024Service
	let synth025Store: Synth025Store
	let synth025Service: Synth025Service
	let synth026Store: Synth026Store
	let synth026Service: Synth026Service
	let synth027Store: Synth027Store
	let synth027Service: Synth027Service
	let synth028Store: Synth028Store
	let synth028Service: Synth028Service
	let synth029Store: Synth029Store
	let synth029Service: Synth029Service
	let synth030Store: Synth030Store
	let synth030Service: Synth030Service
	let synth031Store: Synth031Store
	let synth031Service: Synth031Service
	let synth032Store: Synth032Store
	let synth032Service: Synth032Service

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
		synth017Store = c.resolve(Synth017Store.self)!
		synth017Service = c.resolve(Synth017Service.self)!
		synth018Store = c.resolve(Synth018Store.self)!
		synth018Service = c.resolve(Synth018Service.self)!
		synth019Store = c.resolve(Synth019Store.self)!
		synth019Service = c.resolve(Synth019Service.self)!
		synth020Store = c.resolve(Synth020Store.self)!
		synth020Service = c.resolve(Synth020Service.self)!
		synth021Store = c.resolve(Synth021Store.self)!
		synth021Service = c.resolve(Synth021Service.self)!
		synth022Store = c.resolve(Synth022Store.self)!
		synth022Service = c.resolve(Synth022Service.self)!
		synth023Store = c.resolve(Synth023Store.self)!
		synth023Service = c.resolve(Synth023Service.self)!
		synth024Store = c.resolve(Synth024Store.self)!
		synth024Service = c.resolve(Synth024Service.self)!
		synth025Store = c.resolve(Synth025Store.self)!
		synth025Service = c.resolve(Synth025Service.self)!
		synth026Store = c.resolve(Synth026Store.self)!
		synth026Service = c.resolve(Synth026Service.self)!
		synth027Store = c.resolve(Synth027Store.self)!
		synth027Service = c.resolve(Synth027Service.self)!
		synth028Store = c.resolve(Synth028Store.self)!
		synth028Service = c.resolve(Synth028Service.self)!
		synth029Store = c.resolve(Synth029Store.self)!
		synth029Service = c.resolve(Synth029Service.self)!
		synth030Store = c.resolve(Synth030Store.self)!
		synth030Service = c.resolve(Synth030Service.self)!
		synth031Store = c.resolve(Synth031Store.self)!
		synth031Service = c.resolve(Synth031Service.self)!
		synth032Store = c.resolve(Synth032Store.self)!
		synth032Service = c.resolve(Synth032Service.self)!
	}
}
