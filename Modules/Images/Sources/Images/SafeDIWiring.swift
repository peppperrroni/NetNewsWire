//
//  SafeDIWiring.swift
//  Images
//
//  SafeDI instantiation for this package's services (safedi-pkg variant: wiring lives with the types).
//

import Foundation
import SafeDI
import RSWeb
import ActivityLog
import HTMLMetadata

@Instantiable
extension ImageMetadataDatabase: Instantiable {
	public static func instantiate() -> ImageMetadataDatabase {
		ImageMetadataDatabase()
	}
}

@Instantiable
extension ImageDownloader: Instantiable {
	public static func instantiate(downloader: Downloader, activityLog: ActivityLog, imageMetadataDatabase: ImageMetadataDatabase) -> ImageDownloader {
		ImageDownloader(downloader: downloader, activityLog: activityLog, imageMetadataDatabase: imageMetadataDatabase)
	}
}

@Instantiable
extension FaviconDownloader: Instantiable {
	public static func instantiate(downloader: Downloader, activityLog: ActivityLog, imageMetadataDatabase: ImageMetadataDatabase, htmlMetadataDownloader: HTMLMetadataDownloader) -> FaviconDownloader {
		FaviconDownloader(downloader: downloader, activityLog: activityLog, imageMetadataDatabase: imageMetadataDatabase, htmlMetadataDownloader: htmlMetadataDownloader)
	}
}

@Instantiable
extension FeedIconDownloader: Instantiable {
	public static func instantiate(imageDownloader: ImageDownloader, imageMetadataDatabase: ImageMetadataDatabase, htmlMetadataDownloader: HTMLMetadataDownloader) -> FeedIconDownloader {
		FeedIconDownloader(imageDownloader: imageDownloader, imageMetadataDatabase: imageMetadataDatabase, htmlMetadataDownloader: htmlMetadataDownloader)
	}
}

@Instantiable
extension AuthorAvatarDownloader: Instantiable {
	public static func instantiate(imageDownloader: ImageDownloader) -> AuthorAvatarDownloader {
		AuthorAvatarDownloader(imageDownloader: imageDownloader)
	}
}

@Instantiable
extension FaviconGenerator: Instantiable {
	public static func instantiate() -> FaviconGenerator {
		FaviconGenerator()
	}
}
