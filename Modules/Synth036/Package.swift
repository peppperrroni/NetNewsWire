// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth036",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth036", targets: ["Synth036"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth035")
	],
	targets: [
		.target(name: "Synth036", dependencies: ["ActivityLog", "Synth035"])
	]
)
