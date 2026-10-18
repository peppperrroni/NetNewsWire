// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth063",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth063", targets: ["Synth063"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth062")
	],
	targets: [
		.target(name: "Synth063", dependencies: ["ActivityLog", "Synth062"])
	]
)
