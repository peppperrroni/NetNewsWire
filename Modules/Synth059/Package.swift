// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth059",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth059", targets: ["Synth059"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth058"),
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0")
	],
	targets: [
		.target(name: "Synth059", dependencies: ["ActivityLog", "Synth058", .product(name: "SafeDI", package: "SafeDI")])
	]
)
