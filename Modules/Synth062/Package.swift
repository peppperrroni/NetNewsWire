// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth062",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth062", targets: ["Synth062"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth061")
	],
	targets: [
		.target(name: "Synth062", dependencies: ["ActivityLog", "Synth061"])
	]
)
