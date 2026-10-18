// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth051",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth051", targets: ["Synth051"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth050")
	],
	targets: [
		.target(name: "Synth051", dependencies: ["ActivityLog", "Synth050"])
	]
)
