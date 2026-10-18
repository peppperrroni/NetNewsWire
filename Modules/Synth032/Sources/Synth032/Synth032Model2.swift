//
//  Synth032Model2.swift
//  Synth032 (synthetic, Phase 2b)
//

import Foundation

public enum Synth032Model2Kind: String, CaseIterable, Sendable {
	case kind0
	case kind1
	case kind2
	case kind3
	case kind4
	case kind5
	case kind6
	case kind7
	case kind8
	case kind9
	case kind10
	case kind11
}

public struct Synth032Model2: Hashable, Sendable {
	public var field0: Int
	public var field1: Int
	public var field2: Int
	public var field3: Int
	public var field4: Int
	public var field5: Int
	public var field6: Int
	public var field7: Int
	public var field8: Int
	public var field9: Int
	public var field10: Int
	public var field11: Int
	public var field12: Int
	public var field13: Int
	public var field14: Int
	public var field15: Int
	public var title: String
	public var kind: Synth032Model2Kind

	public init(seed: Int) {
		field0 = seed &* 3 &+ 32
		field1 = seed &* 4 &+ 32
		field2 = seed &* 5 &+ 32
		field3 = seed &* 6 &+ 32
		field4 = seed &* 7 &+ 32
		field5 = seed &* 8 &+ 32
		field6 = seed &* 9 &+ 32
		field7 = seed &* 10 &+ 32
		field8 = seed &* 11 &+ 32
		field9 = seed &* 12 &+ 32
		field10 = seed &* 13 &+ 32
		field11 = seed &* 14 &+ 32
		field12 = seed &* 15 &+ 32
		field13 = seed &* 16 &+ 32
		field14 = seed &* 17 &+ 32
		field15 = seed &* 18 &+ 32
		title = "Synth032Model2-\(seed)"
		kind = Synth032Model2Kind.allCases[abs(seed) % Synth032Model2Kind.allCases.count]
	}

	public func metric0(_ factor: Int) -> Int {
		var total = field0 &* factor
		for value in [field1, field2, field3] {
			total = total &+ (value % (factor == 0 ? 1 : factor))
		}
		return total
	}

	public func metric1(_ factor: Int) -> Int {
		var total = field1 &* factor
		for value in [field2, field3, field4] {
			total = total &+ (value % (factor == 0 ? 1 : factor))
		}
		return total
	}

	public func metric2(_ factor: Int) -> Int {
		var total = field2 &* factor
		for value in [field3, field4, field5] {
			total = total &+ (value % (factor == 0 ? 1 : factor))
		}
		return total
	}

	public func metric3(_ factor: Int) -> Int {
		var total = field3 &* factor
		for value in [field4, field5, field6] {
			total = total &+ (value % (factor == 0 ? 1 : factor))
		}
		return total
	}

	public func metric4(_ factor: Int) -> Int {
		var total = field4 &* factor
		for value in [field5, field6, field7] {
			total = total &+ (value % (factor == 0 ? 1 : factor))
		}
		return total
	}

	public func metric5(_ factor: Int) -> Int {
		var total = field5 &* factor
		for value in [field6, field7, field8] {
			total = total &+ (value % (factor == 0 ? 1 : factor))
		}
		return total
	}

	public func metric6(_ factor: Int) -> Int {
		var total = field6 &* factor
		for value in [field7, field8, field9] {
			total = total &+ (value % (factor == 0 ? 1 : factor))
		}
		return total
	}

	public func metric7(_ factor: Int) -> Int {
		var total = field7 &* factor
		for value in [field8, field9, field10] {
			total = total &+ (value % (factor == 0 ? 1 : factor))
		}
		return total
	}

	public func metric8(_ factor: Int) -> Int {
		var total = field8 &* factor
		for value in [field9, field10, field11] {
			total = total &+ (value % (factor == 0 ? 1 : factor))
		}
		return total
	}

	public func metric9(_ factor: Int) -> Int {
		var total = field9 &* factor
		for value in [field10, field11, field12] {
			total = total &+ (value % (factor == 0 ? 1 : factor))
		}
		return total
	}

	public func metric10(_ factor: Int) -> Int {
		var total = field10 &* factor
		for value in [field11, field12, field13] {
			total = total &+ (value % (factor == 0 ? 1 : factor))
		}
		return total
	}

	public func metric11(_ factor: Int) -> Int {
		var total = field11 &* factor
		for value in [field12, field13, field14] {
			total = total &+ (value % (factor == 0 ? 1 : factor))
		}
		return total
	}

	public func metric12(_ factor: Int) -> Int {
		var total = field12 &* factor
		for value in [field13, field14, field15] {
			total = total &+ (value % (factor == 0 ? 1 : factor))
		}
		return total
	}

	public func metric13(_ factor: Int) -> Int {
		var total = field13 &* factor
		for value in [field14, field15, field0] {
			total = total &+ (value % (factor == 0 ? 1 : factor))
		}
		return total
	}

	public func metric14(_ factor: Int) -> Int {
		var total = field14 &* factor
		for value in [field15, field0, field1] {
			total = total &+ (value % (factor == 0 ? 1 : factor))
		}
		return total
	}

	public func metric15(_ factor: Int) -> Int {
		var total = field15 &* factor
		for value in [field0, field1, field2] {
			total = total &+ (value % (factor == 0 ? 1 : factor))
		}
		return total
	}

	public func metric16(_ factor: Int) -> Int {
		var total = field0 &* factor
		for value in [field1, field2, field3] {
			total = total &+ (value % (factor == 0 ? 1 : factor))
		}
		return total
	}

	public func metric17(_ factor: Int) -> Int {
		var total = field1 &* factor
		for value in [field2, field3, field4] {
			total = total &+ (value % (factor == 0 ? 1 : factor))
		}
		return total
	}

	public func metric18(_ factor: Int) -> Int {
		var total = field2 &* factor
		for value in [field3, field4, field5] {
			total = total &+ (value % (factor == 0 ? 1 : factor))
		}
		return total
	}

	public func metric19(_ factor: Int) -> Int {
		var total = field3 &* factor
		for value in [field4, field5, field6] {
			total = total &+ (value % (factor == 0 ? 1 : factor))
		}
		return total
	}

	public var label: String {
		switch kind {
		case .kind0:
			return "0:\(title)"
		case .kind1:
			return "1:\(title)"
		case .kind2:
			return "2:\(title)"
		case .kind3:
			return "3:\(title)"
		case .kind4:
			return "4:\(title)"
		case .kind5:
			return "5:\(title)"
		case .kind6:
			return "6:\(title)"
		case .kind7:
			return "7:\(title)"
		case .kind8:
			return "8:\(title)"
		case .kind9:
			return "9:\(title)"
		case .kind10:
			return "10:\(title)"
		case .kind11:
			return "11:\(title)"
		}
	}
}

public extension Array where Element == Synth032Model2 {
	func total0() -> Int {
		reduce(0) { $0 &+ $1.metric0(2) }
	}

	func total1() -> Int {
		reduce(0) { $0 &+ $1.metric1(3) }
	}

	func total2() -> Int {
		reduce(0) { $0 &+ $1.metric2(4) }
	}

	func total3() -> Int {
		reduce(0) { $0 &+ $1.metric3(5) }
	}

	func total4() -> Int {
		reduce(0) { $0 &+ $1.metric4(6) }
	}

	func total5() -> Int {
		reduce(0) { $0 &+ $1.metric5(7) }
	}

	func total6() -> Int {
		reduce(0) { $0 &+ $1.metric6(8) }
	}

	func total7() -> Int {
		reduce(0) { $0 &+ $1.metric7(9) }
	}

	func total8() -> Int {
		reduce(0) { $0 &+ $1.metric8(10) }
	}

	func total9() -> Int {
		reduce(0) { $0 &+ $1.metric9(11) }
	}

	func sortedByField0() -> [Synth032Model2] {
		sorted { $0.field0 < $1.field0 }
	}
}

public func makeSynth032Model2Batch(count: Int) -> [Synth032Model2] {
	(0..<count).map { Synth032Model2(seed: $0) }
}
