// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth011",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth011", targets: ["Synth011"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth010")
	],
	targets: [
		.target(name: "Synth011", dependencies: ["ActivityLog", "Synth010"])
	]
)
