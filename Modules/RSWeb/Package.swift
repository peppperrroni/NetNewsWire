// swift-tools-version:6.2
import PackageDescription

let package = Package(
	name: "RSWeb",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(
			name: "RSWeb",
			type: .dynamic,
			targets: ["RSWeb"])
	],
	dependencies: [
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0"),
		.package(path: "../RSParser"),
		.package(path: "../RSCore")
	],
	targets: [
		.target(
			name: "RSWeb",
			dependencies: [
				.product(name: "SafeDI", package: "SafeDI"),
				"RSParser",
				"RSCore"
			],
			swiftSettings: [
				.unsafeFlags(["-warnings-as-errors"]),
				.enableUpcomingFeature("NonisolatedNonsendingByDefault"),
				.enableUpcomingFeature("InferIsolatedConformances")
			]
		),
		.testTarget(
			name: "RSWebTests",
			dependencies: ["RSWeb"])
	]
)
