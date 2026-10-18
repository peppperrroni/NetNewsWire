// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth009",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth009", targets: ["Synth009"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth008")
	],
	targets: [
		.target(name: "Synth009", dependencies: ["ActivityLog", "Synth008"])
	]
)
