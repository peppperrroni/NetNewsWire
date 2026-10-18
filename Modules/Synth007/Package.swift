// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth007",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth007", targets: ["Synth007"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth006")
	],
	targets: [
		.target(name: "Synth007", dependencies: ["ActivityLog", "Synth006"])
	]
)
