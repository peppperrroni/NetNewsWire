// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth002",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth002", targets: ["Synth002"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth001"),
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0")
	],
	targets: [
		.target(name: "Synth002", dependencies: ["ActivityLog", "Synth001", .product(name: "SafeDI", package: "SafeDI")])
	]
)
