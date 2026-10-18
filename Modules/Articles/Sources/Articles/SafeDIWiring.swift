//
//  SafeDIWiring.swift
//  Articles
//
//  SafeDI instantiation for this package's services (safedi-pkg variant: wiring lives with the types).
//

import Foundation
import SafeDI

@Instantiable
extension AuthorCache: Instantiable {
	public static func instantiate() -> AuthorCache {
		AuthorCache()
	}
}
