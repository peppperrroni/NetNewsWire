//
//  SynthDependencies.swift
//  NetNewsWire-iOS
//
//  Wiring for the Phase 2b synthetic packages (64), in this variant's style.
//

import Foundation
import SafeDI
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

@Instantiable
@MainActor public final class SynthServices: Instantiable {

	@Instantiated public let synth001Store: Synth001Store
	@Instantiated public let synth001Service: Synth001Service
	@Instantiated public let synth002Store: Synth002Store
	@Instantiated public let synth002Service: Synth002Service
	@Instantiated public let synth003Store: Synth003Store
	@Instantiated public let synth003Service: Synth003Service
	@Instantiated public let synth004Store: Synth004Store
	@Instantiated public let synth004Service: Synth004Service
	@Instantiated public let synth005Store: Synth005Store
	@Instantiated public let synth005Service: Synth005Service
	@Instantiated public let synth006Store: Synth006Store
	@Instantiated public let synth006Service: Synth006Service
	@Instantiated public let synth007Store: Synth007Store
	@Instantiated public let synth007Service: Synth007Service
	@Instantiated public let synth008Store: Synth008Store
	@Instantiated public let synth008Service: Synth008Service
	@Instantiated public let synth009Store: Synth009Store
	@Instantiated public let synth009Service: Synth009Service
	@Instantiated public let synth010Store: Synth010Store
	@Instantiated public let synth010Service: Synth010Service
	@Instantiated public let synth011Store: Synth011Store
	@Instantiated public let synth011Service: Synth011Service
	@Instantiated public let synth012Store: Synth012Store
	@Instantiated public let synth012Service: Synth012Service
	@Instantiated public let synth013Store: Synth013Store
	@Instantiated public let synth013Service: Synth013Service
	@Instantiated public let synth014Store: Synth014Store
	@Instantiated public let synth014Service: Synth014Service
	@Instantiated public let synth015Store: Synth015Store
	@Instantiated public let synth015Service: Synth015Service
	@Instantiated public let synth016Store: Synth016Store
	@Instantiated public let synth016Service: Synth016Service
	@Instantiated public let synth017Store: Synth017Store
	@Instantiated public let synth017Service: Synth017Service
	@Instantiated public let synth018Store: Synth018Store
	@Instantiated public let synth018Service: Synth018Service
	@Instantiated public let synth019Store: Synth019Store
	@Instantiated public let synth019Service: Synth019Service
	@Instantiated public let synth020Store: Synth020Store
	@Instantiated public let synth020Service: Synth020Service
	@Instantiated public let synth021Store: Synth021Store
	@Instantiated public let synth021Service: Synth021Service
	@Instantiated public let synth022Store: Synth022Store
	@Instantiated public let synth022Service: Synth022Service
	@Instantiated public let synth023Store: Synth023Store
	@Instantiated public let synth023Service: Synth023Service
	@Instantiated public let synth024Store: Synth024Store
	@Instantiated public let synth024Service: Synth024Service
	@Instantiated public let synth025Store: Synth025Store
	@Instantiated public let synth025Service: Synth025Service
	@Instantiated public let synth026Store: Synth026Store
	@Instantiated public let synth026Service: Synth026Service
	@Instantiated public let synth027Store: Synth027Store
	@Instantiated public let synth027Service: Synth027Service
	@Instantiated public let synth028Store: Synth028Store
	@Instantiated public let synth028Service: Synth028Service
	@Instantiated public let synth029Store: Synth029Store
	@Instantiated public let synth029Service: Synth029Service
	@Instantiated public let synth030Store: Synth030Store
	@Instantiated public let synth030Service: Synth030Service
	@Instantiated public let synth031Store: Synth031Store
	@Instantiated public let synth031Service: Synth031Service
	@Instantiated public let synth032Store: Synth032Store
	@Instantiated public let synth032Service: Synth032Service
	@Instantiated public let synth033Store: Synth033Store
	@Instantiated public let synth033Service: Synth033Service
	@Instantiated public let synth034Store: Synth034Store
	@Instantiated public let synth034Service: Synth034Service
	@Instantiated public let synth035Store: Synth035Store
	@Instantiated public let synth035Service: Synth035Service
	@Instantiated public let synth036Store: Synth036Store
	@Instantiated public let synth036Service: Synth036Service
	@Instantiated public let synth037Store: Synth037Store
	@Instantiated public let synth037Service: Synth037Service
	@Instantiated public let synth038Store: Synth038Store
	@Instantiated public let synth038Service: Synth038Service
	@Instantiated public let synth039Store: Synth039Store
	@Instantiated public let synth039Service: Synth039Service
	@Instantiated public let synth040Store: Synth040Store
	@Instantiated public let synth040Service: Synth040Service
	@Instantiated public let synth041Store: Synth041Store
	@Instantiated public let synth041Service: Synth041Service
	@Instantiated public let synth042Store: Synth042Store
	@Instantiated public let synth042Service: Synth042Service
	@Instantiated public let synth043Store: Synth043Store
	@Instantiated public let synth043Service: Synth043Service
	@Instantiated public let synth044Store: Synth044Store
	@Instantiated public let synth044Service: Synth044Service
	@Instantiated public let synth045Store: Synth045Store
	@Instantiated public let synth045Service: Synth045Service
	@Instantiated public let synth046Store: Synth046Store
	@Instantiated public let synth046Service: Synth046Service
	@Instantiated public let synth047Store: Synth047Store
	@Instantiated public let synth047Service: Synth047Service
	@Instantiated public let synth048Store: Synth048Store
	@Instantiated public let synth048Service: Synth048Service
	@Instantiated public let synth049Store: Synth049Store
	@Instantiated public let synth049Service: Synth049Service
	@Instantiated public let synth050Store: Synth050Store
	@Instantiated public let synth050Service: Synth050Service
	@Instantiated public let synth051Store: Synth051Store
	@Instantiated public let synth051Service: Synth051Service
	@Instantiated public let synth052Store: Synth052Store
	@Instantiated public let synth052Service: Synth052Service
	@Instantiated public let synth053Store: Synth053Store
	@Instantiated public let synth053Service: Synth053Service
	@Instantiated public let synth054Store: Synth054Store
	@Instantiated public let synth054Service: Synth054Service
	@Instantiated public let synth055Store: Synth055Store
	@Instantiated public let synth055Service: Synth055Service
	@Instantiated public let synth056Store: Synth056Store
	@Instantiated public let synth056Service: Synth056Service
	@Instantiated public let synth057Store: Synth057Store
	@Instantiated public let synth057Service: Synth057Service
	@Instantiated public let synth058Store: Synth058Store
	@Instantiated public let synth058Service: Synth058Service
	@Instantiated public let synth059Store: Synth059Store
	@Instantiated public let synth059Service: Synth059Service
	@Instantiated public let synth060Store: Synth060Store
	@Instantiated public let synth060Service: Synth060Service
	@Instantiated public let synth061Store: Synth061Store
	@Instantiated public let synth061Service: Synth061Service
	@Instantiated public let synth062Store: Synth062Store
	@Instantiated public let synth062Service: Synth062Service
	@Instantiated public let synth063Store: Synth063Store
	@Instantiated public let synth063Service: Synth063Service
	@Instantiated public let synth064Store: Synth064Store
	@Instantiated public let synth064Service: Synth064Service

	public init(
		synth001Store: Synth001Store,
		synth001Service: Synth001Service,
		synth002Store: Synth002Store,
		synth002Service: Synth002Service,
		synth003Store: Synth003Store,
		synth003Service: Synth003Service,
		synth004Store: Synth004Store,
		synth004Service: Synth004Service,
		synth005Store: Synth005Store,
		synth005Service: Synth005Service,
		synth006Store: Synth006Store,
		synth006Service: Synth006Service,
		synth007Store: Synth007Store,
		synth007Service: Synth007Service,
		synth008Store: Synth008Store,
		synth008Service: Synth008Service,
		synth009Store: Synth009Store,
		synth009Service: Synth009Service,
		synth010Store: Synth010Store,
		synth010Service: Synth010Service,
		synth011Store: Synth011Store,
		synth011Service: Synth011Service,
		synth012Store: Synth012Store,
		synth012Service: Synth012Service,
		synth013Store: Synth013Store,
		synth013Service: Synth013Service,
		synth014Store: Synth014Store,
		synth014Service: Synth014Service,
		synth015Store: Synth015Store,
		synth015Service: Synth015Service,
		synth016Store: Synth016Store,
		synth016Service: Synth016Service,
		synth017Store: Synth017Store,
		synth017Service: Synth017Service,
		synth018Store: Synth018Store,
		synth018Service: Synth018Service,
		synth019Store: Synth019Store,
		synth019Service: Synth019Service,
		synth020Store: Synth020Store,
		synth020Service: Synth020Service,
		synth021Store: Synth021Store,
		synth021Service: Synth021Service,
		synth022Store: Synth022Store,
		synth022Service: Synth022Service,
		synth023Store: Synth023Store,
		synth023Service: Synth023Service,
		synth024Store: Synth024Store,
		synth024Service: Synth024Service,
		synth025Store: Synth025Store,
		synth025Service: Synth025Service,
		synth026Store: Synth026Store,
		synth026Service: Synth026Service,
		synth027Store: Synth027Store,
		synth027Service: Synth027Service,
		synth028Store: Synth028Store,
		synth028Service: Synth028Service,
		synth029Store: Synth029Store,
		synth029Service: Synth029Service,
		synth030Store: Synth030Store,
		synth030Service: Synth030Service,
		synth031Store: Synth031Store,
		synth031Service: Synth031Service,
		synth032Store: Synth032Store,
		synth032Service: Synth032Service,
		synth033Store: Synth033Store,
		synth033Service: Synth033Service,
		synth034Store: Synth034Store,
		synth034Service: Synth034Service,
		synth035Store: Synth035Store,
		synth035Service: Synth035Service,
		synth036Store: Synth036Store,
		synth036Service: Synth036Service,
		synth037Store: Synth037Store,
		synth037Service: Synth037Service,
		synth038Store: Synth038Store,
		synth038Service: Synth038Service,
		synth039Store: Synth039Store,
		synth039Service: Synth039Service,
		synth040Store: Synth040Store,
		synth040Service: Synth040Service,
		synth041Store: Synth041Store,
		synth041Service: Synth041Service,
		synth042Store: Synth042Store,
		synth042Service: Synth042Service,
		synth043Store: Synth043Store,
		synth043Service: Synth043Service,
		synth044Store: Synth044Store,
		synth044Service: Synth044Service,
		synth045Store: Synth045Store,
		synth045Service: Synth045Service,
		synth046Store: Synth046Store,
		synth046Service: Synth046Service,
		synth047Store: Synth047Store,
		synth047Service: Synth047Service,
		synth048Store: Synth048Store,
		synth048Service: Synth048Service,
		synth049Store: Synth049Store,
		synth049Service: Synth049Service,
		synth050Store: Synth050Store,
		synth050Service: Synth050Service,
		synth051Store: Synth051Store,
		synth051Service: Synth051Service,
		synth052Store: Synth052Store,
		synth052Service: Synth052Service,
		synth053Store: Synth053Store,
		synth053Service: Synth053Service,
		synth054Store: Synth054Store,
		synth054Service: Synth054Service,
		synth055Store: Synth055Store,
		synth055Service: Synth055Service,
		synth056Store: Synth056Store,
		synth056Service: Synth056Service,
		synth057Store: Synth057Store,
		synth057Service: Synth057Service,
		synth058Store: Synth058Store,
		synth058Service: Synth058Service,
		synth059Store: Synth059Store,
		synth059Service: Synth059Service,
		synth060Store: Synth060Store,
		synth060Service: Synth060Service,
		synth061Store: Synth061Store,
		synth061Service: Synth061Service,
		synth062Store: Synth062Store,
		synth062Service: Synth062Service,
		synth063Store: Synth063Store,
		synth063Service: Synth063Service,
		synth064Store: Synth064Store,
		synth064Service: Synth064Service
	) {
		self.synth001Store = synth001Store
		self.synth001Service = synth001Service
		self.synth002Store = synth002Store
		self.synth002Service = synth002Service
		self.synth003Store = synth003Store
		self.synth003Service = synth003Service
		self.synth004Store = synth004Store
		self.synth004Service = synth004Service
		self.synth005Store = synth005Store
		self.synth005Service = synth005Service
		self.synth006Store = synth006Store
		self.synth006Service = synth006Service
		self.synth007Store = synth007Store
		self.synth007Service = synth007Service
		self.synth008Store = synth008Store
		self.synth008Service = synth008Service
		self.synth009Store = synth009Store
		self.synth009Service = synth009Service
		self.synth010Store = synth010Store
		self.synth010Service = synth010Service
		self.synth011Store = synth011Store
		self.synth011Service = synth011Service
		self.synth012Store = synth012Store
		self.synth012Service = synth012Service
		self.synth013Store = synth013Store
		self.synth013Service = synth013Service
		self.synth014Store = synth014Store
		self.synth014Service = synth014Service
		self.synth015Store = synth015Store
		self.synth015Service = synth015Service
		self.synth016Store = synth016Store
		self.synth016Service = synth016Service
		self.synth017Store = synth017Store
		self.synth017Service = synth017Service
		self.synth018Store = synth018Store
		self.synth018Service = synth018Service
		self.synth019Store = synth019Store
		self.synth019Service = synth019Service
		self.synth020Store = synth020Store
		self.synth020Service = synth020Service
		self.synth021Store = synth021Store
		self.synth021Service = synth021Service
		self.synth022Store = synth022Store
		self.synth022Service = synth022Service
		self.synth023Store = synth023Store
		self.synth023Service = synth023Service
		self.synth024Store = synth024Store
		self.synth024Service = synth024Service
		self.synth025Store = synth025Store
		self.synth025Service = synth025Service
		self.synth026Store = synth026Store
		self.synth026Service = synth026Service
		self.synth027Store = synth027Store
		self.synth027Service = synth027Service
		self.synth028Store = synth028Store
		self.synth028Service = synth028Service
		self.synth029Store = synth029Store
		self.synth029Service = synth029Service
		self.synth030Store = synth030Store
		self.synth030Service = synth030Service
		self.synth031Store = synth031Store
		self.synth031Service = synth031Service
		self.synth032Store = synth032Store
		self.synth032Service = synth032Service
		self.synth033Store = synth033Store
		self.synth033Service = synth033Service
		self.synth034Store = synth034Store
		self.synth034Service = synth034Service
		self.synth035Store = synth035Store
		self.synth035Service = synth035Service
		self.synth036Store = synth036Store
		self.synth036Service = synth036Service
		self.synth037Store = synth037Store
		self.synth037Service = synth037Service
		self.synth038Store = synth038Store
		self.synth038Service = synth038Service
		self.synth039Store = synth039Store
		self.synth039Service = synth039Service
		self.synth040Store = synth040Store
		self.synth040Service = synth040Service
		self.synth041Store = synth041Store
		self.synth041Service = synth041Service
		self.synth042Store = synth042Store
		self.synth042Service = synth042Service
		self.synth043Store = synth043Store
		self.synth043Service = synth043Service
		self.synth044Store = synth044Store
		self.synth044Service = synth044Service
		self.synth045Store = synth045Store
		self.synth045Service = synth045Service
		self.synth046Store = synth046Store
		self.synth046Service = synth046Service
		self.synth047Store = synth047Store
		self.synth047Service = synth047Service
		self.synth048Store = synth048Store
		self.synth048Service = synth048Service
		self.synth049Store = synth049Store
		self.synth049Service = synth049Service
		self.synth050Store = synth050Store
		self.synth050Service = synth050Service
		self.synth051Store = synth051Store
		self.synth051Service = synth051Service
		self.synth052Store = synth052Store
		self.synth052Service = synth052Service
		self.synth053Store = synth053Store
		self.synth053Service = synth053Service
		self.synth054Store = synth054Store
		self.synth054Service = synth054Service
		self.synth055Store = synth055Store
		self.synth055Service = synth055Service
		self.synth056Store = synth056Store
		self.synth056Service = synth056Service
		self.synth057Store = synth057Store
		self.synth057Service = synth057Service
		self.synth058Store = synth058Store
		self.synth058Service = synth058Service
		self.synth059Store = synth059Store
		self.synth059Service = synth059Service
		self.synth060Store = synth060Store
		self.synth060Service = synth060Service
		self.synth061Store = synth061Store
		self.synth061Service = synth061Service
		self.synth062Store = synth062Store
		self.synth062Service = synth062Service
		self.synth063Store = synth063Store
		self.synth063Service = synth063Service
		self.synth064Store = synth064Store
		self.synth064Service = synth064Service
	}
}

@Instantiable
extension Synth001Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth001Store {
		Synth001Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth001Service: @retroactive Instantiable {
	public static func instantiate(synth001Store: Synth001Store) -> Synth001Service {
		Synth001Service(store: synth001Store)
	}
}

@Instantiable
extension Synth002Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth002Store {
		Synth002Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth002Service: @retroactive Instantiable {
	public static func instantiate(synth002Store: Synth002Store, synth001Service: Synth001Service) -> Synth002Service {
		Synth002Service(store: synth002Store, previous: synth001Service)
	}
}

@Instantiable
extension Synth003Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth003Store {
		Synth003Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth003Service: @retroactive Instantiable {
	public static func instantiate(synth003Store: Synth003Store, synth002Service: Synth002Service) -> Synth003Service {
		Synth003Service(store: synth003Store, previous: synth002Service)
	}
}

@Instantiable
extension Synth004Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth004Store {
		Synth004Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth004Service: @retroactive Instantiable {
	public static func instantiate(synth004Store: Synth004Store, synth003Service: Synth003Service) -> Synth004Service {
		Synth004Service(store: synth004Store, previous: synth003Service)
	}
}

@Instantiable
extension Synth005Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth005Store {
		Synth005Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth005Service: @retroactive Instantiable {
	public static func instantiate(synth005Store: Synth005Store, synth004Service: Synth004Service) -> Synth005Service {
		Synth005Service(store: synth005Store, previous: synth004Service)
	}
}

@Instantiable
extension Synth006Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth006Store {
		Synth006Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth006Service: @retroactive Instantiable {
	public static func instantiate(synth006Store: Synth006Store, synth005Service: Synth005Service) -> Synth006Service {
		Synth006Service(store: synth006Store, previous: synth005Service)
	}
}

@Instantiable
extension Synth007Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth007Store {
		Synth007Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth007Service: @retroactive Instantiable {
	public static func instantiate(synth007Store: Synth007Store, synth006Service: Synth006Service) -> Synth007Service {
		Synth007Service(store: synth007Store, previous: synth006Service)
	}
}

@Instantiable
extension Synth008Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth008Store {
		Synth008Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth008Service: @retroactive Instantiable {
	public static func instantiate(synth008Store: Synth008Store, synth007Service: Synth007Service) -> Synth008Service {
		Synth008Service(store: synth008Store, previous: synth007Service)
	}
}

@Instantiable
extension Synth009Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth009Store {
		Synth009Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth009Service: @retroactive Instantiable {
	public static func instantiate(synth009Store: Synth009Store, synth008Service: Synth008Service) -> Synth009Service {
		Synth009Service(store: synth009Store, previous: synth008Service)
	}
}

@Instantiable
extension Synth010Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth010Store {
		Synth010Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth010Service: @retroactive Instantiable {
	public static func instantiate(synth010Store: Synth010Store, synth009Service: Synth009Service) -> Synth010Service {
		Synth010Service(store: synth010Store, previous: synth009Service)
	}
}

@Instantiable
extension Synth011Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth011Store {
		Synth011Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth011Service: @retroactive Instantiable {
	public static func instantiate(synth011Store: Synth011Store, synth010Service: Synth010Service) -> Synth011Service {
		Synth011Service(store: synth011Store, previous: synth010Service)
	}
}

@Instantiable
extension Synth012Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth012Store {
		Synth012Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth012Service: @retroactive Instantiable {
	public static func instantiate(synth012Store: Synth012Store, synth011Service: Synth011Service) -> Synth012Service {
		Synth012Service(store: synth012Store, previous: synth011Service)
	}
}

@Instantiable
extension Synth013Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth013Store {
		Synth013Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth013Service: @retroactive Instantiable {
	public static func instantiate(synth013Store: Synth013Store, synth012Service: Synth012Service) -> Synth013Service {
		Synth013Service(store: synth013Store, previous: synth012Service)
	}
}

@Instantiable
extension Synth014Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth014Store {
		Synth014Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth014Service: @retroactive Instantiable {
	public static func instantiate(synth014Store: Synth014Store, synth013Service: Synth013Service) -> Synth014Service {
		Synth014Service(store: synth014Store, previous: synth013Service)
	}
}

@Instantiable
extension Synth015Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth015Store {
		Synth015Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth015Service: @retroactive Instantiable {
	public static func instantiate(synth015Store: Synth015Store, synth014Service: Synth014Service) -> Synth015Service {
		Synth015Service(store: synth015Store, previous: synth014Service)
	}
}

@Instantiable
extension Synth016Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth016Store {
		Synth016Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth016Service: @retroactive Instantiable {
	public static func instantiate(synth016Store: Synth016Store, synth015Service: Synth015Service) -> Synth016Service {
		Synth016Service(store: synth016Store, previous: synth015Service)
	}
}

@Instantiable
extension Synth017Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth017Store {
		Synth017Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth017Service: @retroactive Instantiable {
	public static func instantiate(synth017Store: Synth017Store, synth016Service: Synth016Service) -> Synth017Service {
		Synth017Service(store: synth017Store, previous: synth016Service)
	}
}

@Instantiable
extension Synth018Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth018Store {
		Synth018Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth018Service: @retroactive Instantiable {
	public static func instantiate(synth018Store: Synth018Store, synth017Service: Synth017Service) -> Synth018Service {
		Synth018Service(store: synth018Store, previous: synth017Service)
	}
}

@Instantiable
extension Synth019Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth019Store {
		Synth019Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth019Service: @retroactive Instantiable {
	public static func instantiate(synth019Store: Synth019Store, synth018Service: Synth018Service) -> Synth019Service {
		Synth019Service(store: synth019Store, previous: synth018Service)
	}
}

@Instantiable
extension Synth020Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth020Store {
		Synth020Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth020Service: @retroactive Instantiable {
	public static func instantiate(synth020Store: Synth020Store, synth019Service: Synth019Service) -> Synth020Service {
		Synth020Service(store: synth020Store, previous: synth019Service)
	}
}

@Instantiable
extension Synth021Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth021Store {
		Synth021Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth021Service: @retroactive Instantiable {
	public static func instantiate(synth021Store: Synth021Store, synth020Service: Synth020Service) -> Synth021Service {
		Synth021Service(store: synth021Store, previous: synth020Service)
	}
}

@Instantiable
extension Synth022Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth022Store {
		Synth022Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth022Service: @retroactive Instantiable {
	public static func instantiate(synth022Store: Synth022Store, synth021Service: Synth021Service) -> Synth022Service {
		Synth022Service(store: synth022Store, previous: synth021Service)
	}
}

@Instantiable
extension Synth023Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth023Store {
		Synth023Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth023Service: @retroactive Instantiable {
	public static func instantiate(synth023Store: Synth023Store, synth022Service: Synth022Service) -> Synth023Service {
		Synth023Service(store: synth023Store, previous: synth022Service)
	}
}

@Instantiable
extension Synth024Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth024Store {
		Synth024Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth024Service: @retroactive Instantiable {
	public static func instantiate(synth024Store: Synth024Store, synth023Service: Synth023Service) -> Synth024Service {
		Synth024Service(store: synth024Store, previous: synth023Service)
	}
}

@Instantiable
extension Synth025Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth025Store {
		Synth025Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth025Service: @retroactive Instantiable {
	public static func instantiate(synth025Store: Synth025Store, synth024Service: Synth024Service) -> Synth025Service {
		Synth025Service(store: synth025Store, previous: synth024Service)
	}
}

@Instantiable
extension Synth026Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth026Store {
		Synth026Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth026Service: @retroactive Instantiable {
	public static func instantiate(synth026Store: Synth026Store, synth025Service: Synth025Service) -> Synth026Service {
		Synth026Service(store: synth026Store, previous: synth025Service)
	}
}

@Instantiable
extension Synth027Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth027Store {
		Synth027Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth027Service: @retroactive Instantiable {
	public static func instantiate(synth027Store: Synth027Store, synth026Service: Synth026Service) -> Synth027Service {
		Synth027Service(store: synth027Store, previous: synth026Service)
	}
}

@Instantiable
extension Synth028Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth028Store {
		Synth028Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth028Service: @retroactive Instantiable {
	public static func instantiate(synth028Store: Synth028Store, synth027Service: Synth027Service) -> Synth028Service {
		Synth028Service(store: synth028Store, previous: synth027Service)
	}
}

@Instantiable
extension Synth029Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth029Store {
		Synth029Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth029Service: @retroactive Instantiable {
	public static func instantiate(synth029Store: Synth029Store, synth028Service: Synth028Service) -> Synth029Service {
		Synth029Service(store: synth029Store, previous: synth028Service)
	}
}

@Instantiable
extension Synth030Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth030Store {
		Synth030Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth030Service: @retroactive Instantiable {
	public static func instantiate(synth030Store: Synth030Store, synth029Service: Synth029Service) -> Synth030Service {
		Synth030Service(store: synth030Store, previous: synth029Service)
	}
}

@Instantiable
extension Synth031Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth031Store {
		Synth031Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth031Service: @retroactive Instantiable {
	public static func instantiate(synth031Store: Synth031Store, synth030Service: Synth030Service) -> Synth031Service {
		Synth031Service(store: synth031Store, previous: synth030Service)
	}
}

@Instantiable
extension Synth032Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth032Store {
		Synth032Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth032Service: @retroactive Instantiable {
	public static func instantiate(synth032Store: Synth032Store, synth031Service: Synth031Service) -> Synth032Service {
		Synth032Service(store: synth032Store, previous: synth031Service)
	}
}

@Instantiable
extension Synth033Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth033Store {
		Synth033Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth033Service: @retroactive Instantiable {
	public static func instantiate(synth033Store: Synth033Store, synth032Service: Synth032Service) -> Synth033Service {
		Synth033Service(store: synth033Store, previous: synth032Service)
	}
}

@Instantiable
extension Synth034Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth034Store {
		Synth034Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth034Service: @retroactive Instantiable {
	public static func instantiate(synth034Store: Synth034Store, synth033Service: Synth033Service) -> Synth034Service {
		Synth034Service(store: synth034Store, previous: synth033Service)
	}
}

@Instantiable
extension Synth035Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth035Store {
		Synth035Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth035Service: @retroactive Instantiable {
	public static func instantiate(synth035Store: Synth035Store, synth034Service: Synth034Service) -> Synth035Service {
		Synth035Service(store: synth035Store, previous: synth034Service)
	}
}

@Instantiable
extension Synth036Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth036Store {
		Synth036Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth036Service: @retroactive Instantiable {
	public static func instantiate(synth036Store: Synth036Store, synth035Service: Synth035Service) -> Synth036Service {
		Synth036Service(store: synth036Store, previous: synth035Service)
	}
}

@Instantiable
extension Synth037Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth037Store {
		Synth037Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth037Service: @retroactive Instantiable {
	public static func instantiate(synth037Store: Synth037Store, synth036Service: Synth036Service) -> Synth037Service {
		Synth037Service(store: synth037Store, previous: synth036Service)
	}
}

@Instantiable
extension Synth038Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth038Store {
		Synth038Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth038Service: @retroactive Instantiable {
	public static func instantiate(synth038Store: Synth038Store, synth037Service: Synth037Service) -> Synth038Service {
		Synth038Service(store: synth038Store, previous: synth037Service)
	}
}

@Instantiable
extension Synth039Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth039Store {
		Synth039Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth039Service: @retroactive Instantiable {
	public static func instantiate(synth039Store: Synth039Store, synth038Service: Synth038Service) -> Synth039Service {
		Synth039Service(store: synth039Store, previous: synth038Service)
	}
}

@Instantiable
extension Synth040Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth040Store {
		Synth040Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth040Service: @retroactive Instantiable {
	public static func instantiate(synth040Store: Synth040Store, synth039Service: Synth039Service) -> Synth040Service {
		Synth040Service(store: synth040Store, previous: synth039Service)
	}
}

@Instantiable
extension Synth041Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth041Store {
		Synth041Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth041Service: @retroactive Instantiable {
	public static func instantiate(synth041Store: Synth041Store, synth040Service: Synth040Service) -> Synth041Service {
		Synth041Service(store: synth041Store, previous: synth040Service)
	}
}

@Instantiable
extension Synth042Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth042Store {
		Synth042Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth042Service: @retroactive Instantiable {
	public static func instantiate(synth042Store: Synth042Store, synth041Service: Synth041Service) -> Synth042Service {
		Synth042Service(store: synth042Store, previous: synth041Service)
	}
}

@Instantiable
extension Synth043Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth043Store {
		Synth043Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth043Service: @retroactive Instantiable {
	public static func instantiate(synth043Store: Synth043Store, synth042Service: Synth042Service) -> Synth043Service {
		Synth043Service(store: synth043Store, previous: synth042Service)
	}
}

@Instantiable
extension Synth044Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth044Store {
		Synth044Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth044Service: @retroactive Instantiable {
	public static func instantiate(synth044Store: Synth044Store, synth043Service: Synth043Service) -> Synth044Service {
		Synth044Service(store: synth044Store, previous: synth043Service)
	}
}

@Instantiable
extension Synth045Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth045Store {
		Synth045Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth045Service: @retroactive Instantiable {
	public static func instantiate(synth045Store: Synth045Store, synth044Service: Synth044Service) -> Synth045Service {
		Synth045Service(store: synth045Store, previous: synth044Service)
	}
}

@Instantiable
extension Synth046Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth046Store {
		Synth046Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth046Service: @retroactive Instantiable {
	public static func instantiate(synth046Store: Synth046Store, synth045Service: Synth045Service) -> Synth046Service {
		Synth046Service(store: synth046Store, previous: synth045Service)
	}
}

@Instantiable
extension Synth047Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth047Store {
		Synth047Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth047Service: @retroactive Instantiable {
	public static func instantiate(synth047Store: Synth047Store, synth046Service: Synth046Service) -> Synth047Service {
		Synth047Service(store: synth047Store, previous: synth046Service)
	}
}

@Instantiable
extension Synth048Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth048Store {
		Synth048Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth048Service: @retroactive Instantiable {
	public static func instantiate(synth048Store: Synth048Store, synth047Service: Synth047Service) -> Synth048Service {
		Synth048Service(store: synth048Store, previous: synth047Service)
	}
}

@Instantiable
extension Synth049Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth049Store {
		Synth049Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth049Service: @retroactive Instantiable {
	public static func instantiate(synth049Store: Synth049Store, synth048Service: Synth048Service) -> Synth049Service {
		Synth049Service(store: synth049Store, previous: synth048Service)
	}
}

@Instantiable
extension Synth050Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth050Store {
		Synth050Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth050Service: @retroactive Instantiable {
	public static func instantiate(synth050Store: Synth050Store, synth049Service: Synth049Service) -> Synth050Service {
		Synth050Service(store: synth050Store, previous: synth049Service)
	}
}

@Instantiable
extension Synth051Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth051Store {
		Synth051Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth051Service: @retroactive Instantiable {
	public static func instantiate(synth051Store: Synth051Store, synth050Service: Synth050Service) -> Synth051Service {
		Synth051Service(store: synth051Store, previous: synth050Service)
	}
}

@Instantiable
extension Synth052Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth052Store {
		Synth052Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth052Service: @retroactive Instantiable {
	public static func instantiate(synth052Store: Synth052Store, synth051Service: Synth051Service) -> Synth052Service {
		Synth052Service(store: synth052Store, previous: synth051Service)
	}
}

@Instantiable
extension Synth053Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth053Store {
		Synth053Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth053Service: @retroactive Instantiable {
	public static func instantiate(synth053Store: Synth053Store, synth052Service: Synth052Service) -> Synth053Service {
		Synth053Service(store: synth053Store, previous: synth052Service)
	}
}

@Instantiable
extension Synth054Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth054Store {
		Synth054Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth054Service: @retroactive Instantiable {
	public static func instantiate(synth054Store: Synth054Store, synth053Service: Synth053Service) -> Synth054Service {
		Synth054Service(store: synth054Store, previous: synth053Service)
	}
}

@Instantiable
extension Synth055Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth055Store {
		Synth055Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth055Service: @retroactive Instantiable {
	public static func instantiate(synth055Store: Synth055Store, synth054Service: Synth054Service) -> Synth055Service {
		Synth055Service(store: synth055Store, previous: synth054Service)
	}
}

@Instantiable
extension Synth056Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth056Store {
		Synth056Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth056Service: @retroactive Instantiable {
	public static func instantiate(synth056Store: Synth056Store, synth055Service: Synth055Service) -> Synth056Service {
		Synth056Service(store: synth056Store, previous: synth055Service)
	}
}

@Instantiable
extension Synth057Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth057Store {
		Synth057Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth057Service: @retroactive Instantiable {
	public static func instantiate(synth057Store: Synth057Store, synth056Service: Synth056Service) -> Synth057Service {
		Synth057Service(store: synth057Store, previous: synth056Service)
	}
}

@Instantiable
extension Synth058Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth058Store {
		Synth058Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth058Service: @retroactive Instantiable {
	public static func instantiate(synth058Store: Synth058Store, synth057Service: Synth057Service) -> Synth058Service {
		Synth058Service(store: synth058Store, previous: synth057Service)
	}
}

@Instantiable
extension Synth059Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth059Store {
		Synth059Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth059Service: @retroactive Instantiable {
	public static func instantiate(synth059Store: Synth059Store, synth058Service: Synth058Service) -> Synth059Service {
		Synth059Service(store: synth059Store, previous: synth058Service)
	}
}

@Instantiable
extension Synth060Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth060Store {
		Synth060Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth060Service: @retroactive Instantiable {
	public static func instantiate(synth060Store: Synth060Store, synth059Service: Synth059Service) -> Synth060Service {
		Synth060Service(store: synth060Store, previous: synth059Service)
	}
}

@Instantiable
extension Synth061Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth061Store {
		Synth061Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth061Service: @retroactive Instantiable {
	public static func instantiate(synth061Store: Synth061Store, synth060Service: Synth060Service) -> Synth061Service {
		Synth061Service(store: synth061Store, previous: synth060Service)
	}
}

@Instantiable
extension Synth062Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth062Store {
		Synth062Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth062Service: @retroactive Instantiable {
	public static func instantiate(synth062Store: Synth062Store, synth061Service: Synth061Service) -> Synth062Service {
		Synth062Service(store: synth062Store, previous: synth061Service)
	}
}

@Instantiable
extension Synth063Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth063Store {
		Synth063Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth063Service: @retroactive Instantiable {
	public static func instantiate(synth063Store: Synth063Store, synth062Service: Synth062Service) -> Synth063Service {
		Synth063Service(store: synth063Store, previous: synth062Service)
	}
}

@Instantiable
extension Synth064Store: @retroactive Instantiable {
	public static func instantiate(activityLog: ActivityLog) -> Synth064Store {
		Synth064Store(activityLog: activityLog)
	}
}

@Instantiable
extension Synth064Service: @retroactive Instantiable {
	public static func instantiate(synth064Store: Synth064Store, synth063Service: Synth063Service) -> Synth064Service {
		Synth064Service(store: synth064Store, previous: synth063Service)
	}
}
