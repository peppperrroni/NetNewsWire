// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth050",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth050", targets: ["Synth050"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth049")
	],
	targets: [
		.target(name: "Synth050", dependencies: ["ActivityLog", "Synth049"])
	]
)
