// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth048",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth048", targets: ["Synth048"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth047")
	],
	targets: [
		.target(name: "Synth048", dependencies: ["ActivityLog", "Synth047"])
	]
)
