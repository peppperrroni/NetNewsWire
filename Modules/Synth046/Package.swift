// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth046",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth046", targets: ["Synth046"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth045")
	],
	targets: [
		.target(name: "Synth046", dependencies: ["ActivityLog", "Synth045"])
	]
)
