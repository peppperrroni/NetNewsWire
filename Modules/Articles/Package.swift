// swift-tools-version:6.2
import PackageDescription

let package = Package(
	name: "Articles",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(
			name: "Articles",
			type: .dynamic,
			targets: ["Articles"])
	],
	dependencies: [
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0"),
		.package(path: "../RSCore")
	],
	targets: [
		.target(
			name: "Articles",
			dependencies: [
				.product(name: "SafeDI", package: "SafeDI"),
				"RSCore"
			],
			swiftSettings: [
				.enableUpcomingFeature("NonisolatedNonsendingByDefault"),
				.enableUpcomingFeature("InferIsolatedConformances")
			]),
		.testTarget(
			name: "ArticlesTests",
			dependencies: ["Articles"])
	]
)
