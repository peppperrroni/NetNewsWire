// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth022",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth022", targets: ["Synth022"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth021")
	],
	targets: [
		.target(name: "Synth022", dependencies: ["ActivityLog", "Synth021"])
	]
)
