// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth047",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth047", targets: ["Synth047"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth046")
	],
	targets: [
		.target(name: "Synth047", dependencies: ["ActivityLog", "Synth046"])
	]
)
