// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth010",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth010", targets: ["Synth010"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth009")
	],
	targets: [
		.target(name: "Synth010", dependencies: ["ActivityLog", "Synth009"])
	]
)
