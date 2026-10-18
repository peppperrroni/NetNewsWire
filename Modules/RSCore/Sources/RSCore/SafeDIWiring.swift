//
//  SafeDIWiring.swift
//  RSCore
//
//  SafeDI instantiation for this package's services (safedi-pkg variant: wiring lives with the types).
//

import Foundation
import SafeDI

@Instantiable
extension BatchUpdate: Instantiable {
	public static func instantiate() -> BatchUpdate {
		BatchUpdate()
	}
}

@Instantiable
extension MainThreadOperationQueue: Instantiable {
	public static func instantiate() -> MainThreadOperationQueue {
		MainThreadOperationQueue()
	}
}
