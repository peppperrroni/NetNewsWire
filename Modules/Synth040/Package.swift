// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth040",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth040", targets: ["Synth040"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth039")
	],
	targets: [
		.target(name: "Synth040", dependencies: ["ActivityLog", "Synth039"])
	]
)
