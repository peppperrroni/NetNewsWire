//
//  BenchScopeAccess.swift
//  NetNewsWire-iOS
//
//  Per-variant adapter so the shared scope checks never touch framework types.
//

import Foundation

@MainActor struct BenchScopeAccess {
	/// The variant's session object for an OnMyMac account with this ID, in a temporary folder.
	let makeSession: (_ accountID: String) -> AnyObject
	/// "account", "database"
	let sessionObjects: (AnyObject) -> [String: AnyObject]
	/// A feature object (one timeline) under a session.
	let makeFeature: (AnyObject) -> AnyObject
	/// "timeline", "fetchRequestQueue"
	let featureObjects: (AnyObject) -> [String: AnyObject]
	/// Make app-scope objects touch the session, so cross-scope retention can be probed.
	let appObjectsUsing: (AnyObject) -> Void
}
