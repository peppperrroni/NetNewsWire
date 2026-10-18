// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth060",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth060", targets: ["Synth060"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth059"),
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0")
	],
	targets: [
		.target(name: "Synth060", dependencies: ["ActivityLog", "Synth059", .product(name: "SafeDI", package: "SafeDI")])
	]
)
