// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth056",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth056", targets: ["Synth056"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth055")
	],
	targets: [
		.target(name: "Synth056", dependencies: ["ActivityLog", "Synth055"])
	]
)
