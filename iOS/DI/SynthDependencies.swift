//
//  SynthDependencies.swift
//  NetNewsWire-iOS
//
//  Wiring for the Phase 2b synthetic packages (64), in this variant's style.
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
import Synth033
import Synth034
import Synth035
import Synth036
import Synth037
import Synth038
import Synth039
import Synth040
import Synth041
import Synth042
import Synth043
import Synth044
import Synth045
import Synth046
import Synth047
import Synth048
import Synth049
import Synth050
import Synth051
import Synth052
import Synth053
import Synth054
import Synth055
import Synth056
import Synth057
import Synth058
import Synth059
import Synth060
import Synth061
import Synth062
import Synth063
import Synth064

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
	c.register(Synth033Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth033Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth033Service.self) { r in let (store, previous) = (r.resolve(Synth033Store.self)!, r.resolve(Synth032Service.self)!); return onMain { Synth033Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth034Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth034Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth034Service.self) { r in let (store, previous) = (r.resolve(Synth034Store.self)!, r.resolve(Synth033Service.self)!); return onMain { Synth034Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth035Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth035Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth035Service.self) { r in let (store, previous) = (r.resolve(Synth035Store.self)!, r.resolve(Synth034Service.self)!); return onMain { Synth035Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth036Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth036Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth036Service.self) { r in let (store, previous) = (r.resolve(Synth036Store.self)!, r.resolve(Synth035Service.self)!); return onMain { Synth036Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth037Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth037Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth037Service.self) { r in let (store, previous) = (r.resolve(Synth037Store.self)!, r.resolve(Synth036Service.self)!); return onMain { Synth037Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth038Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth038Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth038Service.self) { r in let (store, previous) = (r.resolve(Synth038Store.self)!, r.resolve(Synth037Service.self)!); return onMain { Synth038Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth039Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth039Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth039Service.self) { r in let (store, previous) = (r.resolve(Synth039Store.self)!, r.resolve(Synth038Service.self)!); return onMain { Synth039Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth040Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth040Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth040Service.self) { r in let (store, previous) = (r.resolve(Synth040Store.self)!, r.resolve(Synth039Service.self)!); return onMain { Synth040Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth041Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth041Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth041Service.self) { r in let (store, previous) = (r.resolve(Synth041Store.self)!, r.resolve(Synth040Service.self)!); return onMain { Synth041Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth042Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth042Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth042Service.self) { r in let (store, previous) = (r.resolve(Synth042Store.self)!, r.resolve(Synth041Service.self)!); return onMain { Synth042Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth043Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth043Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth043Service.self) { r in let (store, previous) = (r.resolve(Synth043Store.self)!, r.resolve(Synth042Service.self)!); return onMain { Synth043Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth044Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth044Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth044Service.self) { r in let (store, previous) = (r.resolve(Synth044Store.self)!, r.resolve(Synth043Service.self)!); return onMain { Synth044Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth045Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth045Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth045Service.self) { r in let (store, previous) = (r.resolve(Synth045Store.self)!, r.resolve(Synth044Service.self)!); return onMain { Synth045Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth046Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth046Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth046Service.self) { r in let (store, previous) = (r.resolve(Synth046Store.self)!, r.resolve(Synth045Service.self)!); return onMain { Synth046Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth047Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth047Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth047Service.self) { r in let (store, previous) = (r.resolve(Synth047Store.self)!, r.resolve(Synth046Service.self)!); return onMain { Synth047Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth048Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth048Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth048Service.self) { r in let (store, previous) = (r.resolve(Synth048Store.self)!, r.resolve(Synth047Service.self)!); return onMain { Synth048Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth049Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth049Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth049Service.self) { r in let (store, previous) = (r.resolve(Synth049Store.self)!, r.resolve(Synth048Service.self)!); return onMain { Synth049Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth050Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth050Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth050Service.self) { r in let (store, previous) = (r.resolve(Synth050Store.self)!, r.resolve(Synth049Service.self)!); return onMain { Synth050Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth051Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth051Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth051Service.self) { r in let (store, previous) = (r.resolve(Synth051Store.self)!, r.resolve(Synth050Service.self)!); return onMain { Synth051Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth052Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth052Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth052Service.self) { r in let (store, previous) = (r.resolve(Synth052Store.self)!, r.resolve(Synth051Service.self)!); return onMain { Synth052Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth053Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth053Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth053Service.self) { r in let (store, previous) = (r.resolve(Synth053Store.self)!, r.resolve(Synth052Service.self)!); return onMain { Synth053Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth054Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth054Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth054Service.self) { r in let (store, previous) = (r.resolve(Synth054Store.self)!, r.resolve(Synth053Service.self)!); return onMain { Synth054Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth055Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth055Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth055Service.self) { r in let (store, previous) = (r.resolve(Synth055Store.self)!, r.resolve(Synth054Service.self)!); return onMain { Synth055Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth056Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth056Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth056Service.self) { r in let (store, previous) = (r.resolve(Synth056Store.self)!, r.resolve(Synth055Service.self)!); return onMain { Synth056Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth057Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth057Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth057Service.self) { r in let (store, previous) = (r.resolve(Synth057Store.self)!, r.resolve(Synth056Service.self)!); return onMain { Synth057Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth058Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth058Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth058Service.self) { r in let (store, previous) = (r.resolve(Synth058Store.self)!, r.resolve(Synth057Service.self)!); return onMain { Synth058Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth059Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth059Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth059Service.self) { r in let (store, previous) = (r.resolve(Synth059Store.self)!, r.resolve(Synth058Service.self)!); return onMain { Synth059Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth060Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth060Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth060Service.self) { r in let (store, previous) = (r.resolve(Synth060Store.self)!, r.resolve(Synth059Service.self)!); return onMain { Synth060Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth061Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth061Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth061Service.self) { r in let (store, previous) = (r.resolve(Synth061Store.self)!, r.resolve(Synth060Service.self)!); return onMain { Synth061Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth062Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth062Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth062Service.self) { r in let (store, previous) = (r.resolve(Synth062Store.self)!, r.resolve(Synth061Service.self)!); return onMain { Synth062Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth063Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth063Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth063Service.self) { r in let (store, previous) = (r.resolve(Synth063Store.self)!, r.resolve(Synth062Service.self)!); return onMain { Synth063Service(store: store, previous: previous) } }.inObjectScope(.container)
	c.register(Synth064Store.self) { r in let activityLog = r.resolve(ActivityLog.self)!; return onMain { Synth064Store(activityLog: activityLog) } }.inObjectScope(.container)
	c.register(Synth064Service.self) { r in let (store, previous) = (r.resolve(Synth064Store.self)!, r.resolve(Synth063Service.self)!); return onMain { Synth064Service(store: store, previous: previous) } }.inObjectScope(.container)
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
	let synth033Store: Synth033Store
	let synth033Service: Synth033Service
	let synth034Store: Synth034Store
	let synth034Service: Synth034Service
	let synth035Store: Synth035Store
	let synth035Service: Synth035Service
	let synth036Store: Synth036Store
	let synth036Service: Synth036Service
	let synth037Store: Synth037Store
	let synth037Service: Synth037Service
	let synth038Store: Synth038Store
	let synth038Service: Synth038Service
	let synth039Store: Synth039Store
	let synth039Service: Synth039Service
	let synth040Store: Synth040Store
	let synth040Service: Synth040Service
	let synth041Store: Synth041Store
	let synth041Service: Synth041Service
	let synth042Store: Synth042Store
	let synth042Service: Synth042Service
	let synth043Store: Synth043Store
	let synth043Service: Synth043Service
	let synth044Store: Synth044Store
	let synth044Service: Synth044Service
	let synth045Store: Synth045Store
	let synth045Service: Synth045Service
	let synth046Store: Synth046Store
	let synth046Service: Synth046Service
	let synth047Store: Synth047Store
	let synth047Service: Synth047Service
	let synth048Store: Synth048Store
	let synth048Service: Synth048Service
	let synth049Store: Synth049Store
	let synth049Service: Synth049Service
	let synth050Store: Synth050Store
	let synth050Service: Synth050Service
	let synth051Store: Synth051Store
	let synth051Service: Synth051Service
	let synth052Store: Synth052Store
	let synth052Service: Synth052Service
	let synth053Store: Synth053Store
	let synth053Service: Synth053Service
	let synth054Store: Synth054Store
	let synth054Service: Synth054Service
	let synth055Store: Synth055Store
	let synth055Service: Synth055Service
	let synth056Store: Synth056Store
	let synth056Service: Synth056Service
	let synth057Store: Synth057Store
	let synth057Service: Synth057Service
	let synth058Store: Synth058Store
	let synth058Service: Synth058Service
	let synth059Store: Synth059Store
	let synth059Service: Synth059Service
	let synth060Store: Synth060Store
	let synth060Service: Synth060Service
	let synth061Store: Synth061Store
	let synth061Service: Synth061Service
	let synth062Store: Synth062Store
	let synth062Service: Synth062Service
	let synth063Store: Synth063Store
	let synth063Service: Synth063Service
	let synth064Store: Synth064Store
	let synth064Service: Synth064Service

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
		synth033Store = c.resolve(Synth033Store.self)!
		synth033Service = c.resolve(Synth033Service.self)!
		synth034Store = c.resolve(Synth034Store.self)!
		synth034Service = c.resolve(Synth034Service.self)!
		synth035Store = c.resolve(Synth035Store.self)!
		synth035Service = c.resolve(Synth035Service.self)!
		synth036Store = c.resolve(Synth036Store.self)!
		synth036Service = c.resolve(Synth036Service.self)!
		synth037Store = c.resolve(Synth037Store.self)!
		synth037Service = c.resolve(Synth037Service.self)!
		synth038Store = c.resolve(Synth038Store.self)!
		synth038Service = c.resolve(Synth038Service.self)!
		synth039Store = c.resolve(Synth039Store.self)!
		synth039Service = c.resolve(Synth039Service.self)!
		synth040Store = c.resolve(Synth040Store.self)!
		synth040Service = c.resolve(Synth040Service.self)!
		synth041Store = c.resolve(Synth041Store.self)!
		synth041Service = c.resolve(Synth041Service.self)!
		synth042Store = c.resolve(Synth042Store.self)!
		synth042Service = c.resolve(Synth042Service.self)!
		synth043Store = c.resolve(Synth043Store.self)!
		synth043Service = c.resolve(Synth043Service.self)!
		synth044Store = c.resolve(Synth044Store.self)!
		synth044Service = c.resolve(Synth044Service.self)!
		synth045Store = c.resolve(Synth045Store.self)!
		synth045Service = c.resolve(Synth045Service.self)!
		synth046Store = c.resolve(Synth046Store.self)!
		synth046Service = c.resolve(Synth046Service.self)!
		synth047Store = c.resolve(Synth047Store.self)!
		synth047Service = c.resolve(Synth047Service.self)!
		synth048Store = c.resolve(Synth048Store.self)!
		synth048Service = c.resolve(Synth048Service.self)!
		synth049Store = c.resolve(Synth049Store.self)!
		synth049Service = c.resolve(Synth049Service.self)!
		synth050Store = c.resolve(Synth050Store.self)!
		synth050Service = c.resolve(Synth050Service.self)!
		synth051Store = c.resolve(Synth051Store.self)!
		synth051Service = c.resolve(Synth051Service.self)!
		synth052Store = c.resolve(Synth052Store.self)!
		synth052Service = c.resolve(Synth052Service.self)!
		synth053Store = c.resolve(Synth053Store.self)!
		synth053Service = c.resolve(Synth053Service.self)!
		synth054Store = c.resolve(Synth054Store.self)!
		synth054Service = c.resolve(Synth054Service.self)!
		synth055Store = c.resolve(Synth055Store.self)!
		synth055Service = c.resolve(Synth055Service.self)!
		synth056Store = c.resolve(Synth056Store.self)!
		synth056Service = c.resolve(Synth056Service.self)!
		synth057Store = c.resolve(Synth057Store.self)!
		synth057Service = c.resolve(Synth057Service.self)!
		synth058Store = c.resolve(Synth058Store.self)!
		synth058Service = c.resolve(Synth058Service.self)!
		synth059Store = c.resolve(Synth059Store.self)!
		synth059Service = c.resolve(Synth059Service.self)!
		synth060Store = c.resolve(Synth060Store.self)!
		synth060Service = c.resolve(Synth060Service.self)!
		synth061Store = c.resolve(Synth061Store.self)!
		synth061Service = c.resolve(Synth061Service.self)!
		synth062Store = c.resolve(Synth062Store.self)!
		synth062Service = c.resolve(Synth062Service.self)!
		synth063Store = c.resolve(Synth063Store.self)!
		synth063Service = c.resolve(Synth063Service.self)!
		synth064Store = c.resolve(Synth064Store.self)!
		synth064Service = c.resolve(Synth064Service.self)!
	}
}
