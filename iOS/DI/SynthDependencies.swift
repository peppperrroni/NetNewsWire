//
//  SynthDependencies.swift
//  NetNewsWire-iOS
//
//  Wiring for the Phase 2b synthetic packages (32), in this variant's style.
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
		synth032Service: Synth032Service
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
