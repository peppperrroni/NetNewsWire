// swift-tools-version:6.2
import PackageDescription

let package = Package(
	name: "Images",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(
			name: "Images",
			type: .dynamic,
			targets: ["Images"])
	],
	dependencies: [
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0"),
		.package(path: "../RSCore"),
		.package(path: "../RSDatabase"),
		.package(path: "../RSWeb"),
		.package(path: "../Account"),
		.package(path: "../Articles"),
		.package(path: "../HTMLMetadata"),
		.package(path: "../ActivityLog")
	],
	targets: [
		.target(
			name: "Images",
			dependencies: [
				.product(name: "SafeDI", package: "SafeDI"),
				"RSCore",
				"RSDatabase",
				"RSWeb",
				"Account",
				"Articles",
				"HTMLMetadata",
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
