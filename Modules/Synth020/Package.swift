// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth020",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth020", targets: ["Synth020"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth019")
	],
	targets: [
		.target(name: "Synth020", dependencies: ["ActivityLog", "Synth019"])
	]
)
