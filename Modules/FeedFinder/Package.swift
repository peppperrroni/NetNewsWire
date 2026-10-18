// swift-tools-version:6.2
import PackageDescription

let package = Package(
	name: "FeedFinder",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(
			name: "FeedFinder",
			type: .dynamic,
			targets: ["FeedFinder"])
	],
	dependencies: [
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0"),
		.package(path: "../RSWeb"),
		.package(path: "../RSParser"),
		.package(path: "../RSCore"),
		.package(path: "../ActivityLog")
	],
	targets: [
		.target(
			name: "FeedFinder",
			dependencies: [
				.product(name: "SafeDI", package: "SafeDI"),
				"RSWeb",
				"RSParser",
				"RSCore",
				"ActivityLog"
			],
			swiftSettings: [
				.enableUpcomingFeature("NonisolatedNonsendingByDefault"),
				.enableUpcomingFeature("InferIsolatedConformances"),
				.unsafeFlags(["-warnings-as-errors"])
			]
		),
		.testTarget(
			name: "FeedFinderTests",
			dependencies: ["FeedFinder"])
	]
)
