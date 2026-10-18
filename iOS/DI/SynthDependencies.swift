//
//  SynthDependencies.swift
//  NetNewsWire-iOS
//
//  Wiring for the Phase 2b synthetic packages (16), in this variant's style.
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
		synth016Service: Synth016Service
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
