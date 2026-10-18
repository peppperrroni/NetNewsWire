// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth028",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth028", targets: ["Synth028"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth027")
	],
	targets: [
		.target(name: "Synth028", dependencies: ["ActivityLog", "Synth027"])
	]
)
