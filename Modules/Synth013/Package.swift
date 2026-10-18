// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth013",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth013", targets: ["Synth013"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth012")
	],
	targets: [
		.target(name: "Synth013", dependencies: ["ActivityLog", "Synth012"])
	]
)
