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
