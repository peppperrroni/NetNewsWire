//
//  SafeDIWiring.swift
//  RSWeb
//
//  SafeDI instantiation for this package's services (safedi-pkg variant: wiring lives with the types).
//

import Foundation
import SafeDI

@Instantiable
extension DownloadCache: Instantiable {
	public static func instantiate() -> DownloadCache {
		DownloadCache()
	}
}

@Instantiable
extension Downloader: Instantiable {
	public static func instantiate(downloadCache: DownloadCache) -> Downloader {
		Downloader(cache: downloadCache)
	}
}

@Instantiable
extension NetworkMonitor: Instantiable {
	public static func instantiate() -> NetworkMonitor {
		NetworkMonitor()
	}
}
