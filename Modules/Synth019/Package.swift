// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth019",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth019", targets: ["Synth019"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth018")
	],
	targets: [
		.target(name: "Synth019", dependencies: ["ActivityLog", "Synth018"])
	]
)
