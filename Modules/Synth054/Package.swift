// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth054",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth054", targets: ["Synth054"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth053")
	],
	targets: [
		.target(name: "Synth054", dependencies: ["ActivityLog", "Synth053"])
	]
)
