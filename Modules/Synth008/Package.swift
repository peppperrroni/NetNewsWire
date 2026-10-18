// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth008",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth008", targets: ["Synth008"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth007")
	],
	targets: [
		.target(name: "Synth008", dependencies: ["ActivityLog", "Synth007"])
	]
)
