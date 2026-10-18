// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth057",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth057", targets: ["Synth057"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth056")
	],
	targets: [
		.target(name: "Synth057", dependencies: ["ActivityLog", "Synth056"])
	]
)
