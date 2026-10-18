// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth055",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth055", targets: ["Synth055"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth054")
	],
	targets: [
		.target(name: "Synth055", dependencies: ["ActivityLog", "Synth054"])
	]
)
