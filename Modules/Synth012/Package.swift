// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth012",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth012", targets: ["Synth012"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth011")
	],
	targets: [
		.target(name: "Synth012", dependencies: ["ActivityLog", "Synth011"])
	]
)
