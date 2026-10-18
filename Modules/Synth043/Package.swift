// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth043",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth043", targets: ["Synth043"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth042")
	],
	targets: [
		.target(name: "Synth043", dependencies: ["ActivityLog", "Synth042"])
	]
)
