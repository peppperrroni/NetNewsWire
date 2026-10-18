// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth035",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth035", targets: ["Synth035"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth034")
	],
	targets: [
		.target(name: "Synth035", dependencies: ["ActivityLog", "Synth034"])
	]
)
