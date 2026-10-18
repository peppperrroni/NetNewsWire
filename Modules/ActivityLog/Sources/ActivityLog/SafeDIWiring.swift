//
//  SafeDIWiring.swift
//  ActivityLog
//
//  SafeDI instantiation for this package's services (safedi-pkg variant: wiring lives with the types).
//

import Foundation
import SafeDI

@Instantiable
extension ActivityLog: Instantiable {
	public static func instantiate() -> ActivityLog {
		ActivityLog()
	}
}
