// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth037",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth037", targets: ["Synth037"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth036")
	],
	targets: [
		.target(name: "Synth037", dependencies: ["ActivityLog", "Synth036"])
	]
)
