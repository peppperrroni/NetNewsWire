// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth041",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth041", targets: ["Synth041"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth040")
	],
	targets: [
		.target(name: "Synth041", dependencies: ["ActivityLog", "Synth040"])
	]
)
