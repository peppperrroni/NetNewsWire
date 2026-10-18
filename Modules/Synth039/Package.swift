// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth039",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth039", targets: ["Synth039"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth038")
	],
	targets: [
		.target(name: "Synth039", dependencies: ["ActivityLog", "Synth038"])
	]
)
