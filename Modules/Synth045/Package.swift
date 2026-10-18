// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth045",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth045", targets: ["Synth045"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth044"),
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0")
	],
	targets: [
		.target(name: "Synth045", dependencies: ["ActivityLog", "Synth044", .product(name: "SafeDI", package: "SafeDI")])
	]
)
