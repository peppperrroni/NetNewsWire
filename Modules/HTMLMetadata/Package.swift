// swift-tools-version:6.2
import PackageDescription

let package = Package(
	name: "HTMLMetadata",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(
			name: "HTMLMetadata",
			type: .dynamic,
			targets: ["HTMLMetadata"])
	],
	dependencies: [
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0"),
		.package(path: "../RSCore"),
		.package(path: "../RSDatabase"),
		.package(path: "../RSParser"),
		.package(path: "../RSWeb"),
		.package(path: "../ActivityLog")
	],
	targets: [
		.target(
			name: "HTMLMetadata",
			dependencies: [
				.product(name: "SafeDI", package: "SafeDI"),
				"RSCore",
				"RSDatabase",
				"RSParser",
				"RSWeb",
				"ActivityLog"
			],
			swiftSettings: [
				.enableUpcomingFeature("NonisolatedNonsendingByDefault"),
				.enableUpcomingFeature("InferIsolatedConformances"),
				.unsafeFlags(["-warnings-as-errors"])
			]
		)
	]
)
