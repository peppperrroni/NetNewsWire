// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth005",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth005", targets: ["Synth005"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth004")
	],
	targets: [
		.target(name: "Synth005", dependencies: ["ActivityLog", "Synth004"])
	]
)
