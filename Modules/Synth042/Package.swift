// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth042",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth042", targets: ["Synth042"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth041"),
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0")
	],
	targets: [
		.target(name: "Synth042", dependencies: ["ActivityLog", "Synth041", .product(name: "SafeDI", package: "SafeDI")])
	]
)
