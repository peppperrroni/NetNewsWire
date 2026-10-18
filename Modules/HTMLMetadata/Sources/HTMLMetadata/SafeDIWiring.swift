//
//  SafeDIWiring.swift
//  HTMLMetadata
//
//  SafeDI instantiation for this package's services (safedi-pkg variant: wiring lives with the types).
//

import Foundation
import SafeDI
import RSWeb
import ActivityLog

@Instantiable
extension HTMLMetadataDatabase: Instantiable {
	@MainActor public static func instantiate() -> HTMLMetadataDatabase {
		HTMLMetadataDatabase(databasePath: HTMLMetadataDatabase.defaultDatabasePath)
	}
}

@Instantiable
extension HTMLMetadataDownloader: Instantiable {
	public static func instantiate(downloader: Downloader, activityLog: ActivityLog, htmlMetadataDatabase: HTMLMetadataDatabase) -> HTMLMetadataDownloader {
		HTMLMetadataDownloader(downloader: downloader, activityLog: activityLog, database: htmlMetadataDatabase)
	}
}
