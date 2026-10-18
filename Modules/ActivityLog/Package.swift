// swift-tools-version:6.2
import PackageDescription

let package = Package(
	name: "ActivityLog",
	defaultLocalization: "en",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(
			name: "ActivityLog",
			type: .dynamic,
			targets: ["ActivityLog"])
	],
	dependencies: [
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0"),
	],
	targets: [
		.target(
			name: "ActivityLog",
			dependencies: [.product(name: "SafeDI", package: "SafeDI")],
			resources: [.process("Resources")],
			swiftSettings: [
				.enableUpcomingFeature("NonisolatedNonsendingByDefault"),
				.enableUpcomingFeature("InferIsolatedConformances"),
				.unsafeFlags(["-warnings-as-errors"])
			]
		),
		.testTarget(
			name: "ActivityLogTests",
			dependencies: ["ActivityLog"],
			swiftSettings: [.swiftLanguageMode(.v6)]
		)
	]
)
