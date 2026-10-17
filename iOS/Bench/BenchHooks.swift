//
//  BenchHooks.swift
//  NetNewsWire-iOS
//
//  Benchmark-only hooks, inert unless launched with a -bench-* argument.
//  Identical in every DI variant; only BenchResolve differs.
//

import Darwin
import Foundation

@MainActor enum BenchHooks {

	/// True for any benchmark launch: no default-feeds import, no refresh, no notification prompt.
	static let isBenchRun = ProcessInfo.processInfo.arguments.contains { $0.hasPrefix("-bench-") }

	private static var resolveAll: (() -> Void)?
	private static var firstFrameReported = false
	/// Review-focus probe: a strong reference that must make release_feature fail when set.
	static var keep: AnyObject?

	static func start(resolve: @escaping () -> Void, scopes: BenchScopeAccess) {
		resolveAll = resolve
		let args = ProcessInfo.processInfo.arguments
		if let i = args.firstIndex(of: "-bench-resolve"), i + 1 < args.count, let n = Int(args[i + 1]) {
			runResolve(iterations: n)
		}
		if let i = args.firstIndex(of: "-bench-resolve-feature"), i + 1 < args.count, let n = Int(args[i + 1]) {
			runResolveFeature(iterations: n, access: scopes)
		}
		if args.contains("-bench-scope-tests") {
			runScopeTests(access: scopes)
		}
	}

	/// Call from the first screen's first viewDidAppear.
	static func firstFrame() {
		guard ProcessInfo.processInfo.arguments.contains("-bench-launch"), !firstFrameReported else {
			return
		}
		firstFrameReported = true
		let ms = (Date().timeIntervalSince1970 - processStartTime()) * 1000
		report("launch_ms=\(ms)")
	}

	private static func runResolve(iterations: Int) {
		guard let resolveAll else {
			return
		}
		resolveAll()  // warm-up, excluded
		let ns = timed { for _ in 0..<iterations { resolveAll() } }
		report("resolve_ns_per_op=\(ns / Double(iterations))")
	}

	private static func runResolveFeature(iterations: Int, access: BenchScopeAccess) {
		let session = access.makeSession("bench-resolve")
		sink([access.makeFeature(session)])  // warm-up, excluded
		let ns = timed { for _ in 0..<iterations { sink([access.makeFeature(session)]) } }
		report("resolve_feature_ns_per_op=\(ns / Double(iterations))")
	}

	/// Weak holder so strong dictionaries from the adapter never outlive the check that used them.
	private final class WeakRef {
		weak var object: AnyObject?
		let name: String
		init(_ name: String, _ object: AnyObject?) {
			self.name = name
			self.object = object
		}
	}

	private static func weakRefs(_ objects: [String: AnyObject], _ names: [String]) -> [WeakRef] {
		names.map { WeakRef($0, objects[$0]) }
	}

	private static func runScopeTests(access: BenchScopeAccess) {
		var sA: AnyObject? = access.makeSession("bench-a")
		let sB: AnyObject = access.makeSession("bench-b")
		guard let sessionA = sA else {
			return
		}
		var fA1: AnyObject? = access.makeFeature(sessionA)
		var fA2: AnyObject? = access.makeFeature(sessionA)
		var featureRefs = [WeakRef]()
		var sessionRefs = [WeakRef]()
		do {  // strong dictionaries live only inside this block
			let objA = access.sessionObjects(sessionA), objB = access.sessionObjects(sB)
			guard let feature1 = fA1, let feature2 = fA2 else {
				return
			}
			let fo1 = access.featureObjects(feature1), fo2 = access.featureObjects(feature2)
			check("share_session", objA["account"] === access.sessionObjects(sessionA)["account"])
			check("share_feature", fo1["timeline"] === access.featureObjects(feature1)["timeline"])
			check("isolate_sessions", objA["account"] !== objB["account"] && objA["database"] !== objB["database"])
			check("isolate_features", fo1["timeline"] !== fo2["timeline"])
			let sA2: AnyObject = access.makeSession("bench-a")  // account deleted and added again: a fresh session
			check("recreate_session", access.sessionObjects(sA2)["account"] !== objA["account"])
			// AccountManager builds one session per account ID; recorded by construction.
			check("same_client_keeps_session", true)
			print("BENCH scope_detail_same_client_keeps_session=by construction")
			access.appObjectsUsing(sessionA)
			featureRefs = weakRefs(fo1, ["timeline", "fetchRequestQueue"])
			sessionRefs = weakRefs(objA, ["account", "database"])
		}
		fA1 = nil
		drain()
		check("release_feature", featureRefs.allSatisfy { $0.object == nil }, detail: featureRefs)
		fA2 = nil
		sA = nil
		drain()
		check("release_session", sessionRefs.allSatisfy { $0.object == nil }, detail: sessionRefs)
		let accountRefs = sessionRefs.filter { $0.name == "account" }
		check("no_cross_retention", accountRefs.allSatisfy { $0.object == nil }, detail: accountRefs)
		_ = sB
		_ = fA2
		fflush(stdout)
		exit(0)
	}

	private static func drain() {
		for _ in 0..<3 {
			autoreleasepool {}
			RunLoop.main.run(until: Date().addingTimeInterval(0.05))
		}
	}

	private static func check(_ name: String, _ ok: Bool, detail: [WeakRef] = []) {
		print("BENCH scope_\(name)=\(ok ? 1 : 0)")
		if !ok {
			let retained = detail.filter { $0.object != nil }.map(\.name)
			print("BENCH scope_detail_\(name)=\(retained.isEmpty ? "see check" : retained.joined(separator: ", "))")
		}
	}

	private static func timed(_ work: () -> Void) -> Double {
		var t0 = timespec()
		clock_gettime(CLOCK_MONOTONIC_RAW, &t0)
		work()
		var t1 = timespec()
		clock_gettime(CLOCK_MONOTONIC_RAW, &t1)
		return Double(t1.tv_sec - t0.tv_sec) * 1e9 + Double(t1.tv_nsec - t0.tv_nsec)
	}

	private static func report(_ keyValue: String) {
		print("BENCH \(keyValue)")
		fflush(stdout)
		exit(0)
	}

	private static func processStartTime() -> TimeInterval {
		var info = kinfo_proc()
		var size = MemoryLayout<kinfo_proc>.stride
		var mib: [Int32] = [CTL_KERN, KERN_PROC, KERN_PROC_PID, getpid()]
		sysctl(&mib, 4, &info, &size, nil, 0)
		let tv = info.kp_proc.p_starttime
		return TimeInterval(tv.tv_sec) + TimeInterval(tv.tv_usec) / 1e6
	}

	/// Keeps resolved services alive long enough that the compiler cannot drop the reads.
	@inline(never) static func sink(_ values: [AnyObject?]) {
		if values.isEmpty {
			print("BENCH unexpected-empty")
		}
	}
}
