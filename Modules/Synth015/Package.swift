// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth015",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth015", targets: ["Synth015"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth014")
	],
	targets: [
		.target(name: "Synth015", dependencies: ["ActivityLog", "Synth014"])
	]
)
