// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth016",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth016", targets: ["Synth016"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth015"),
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0")
	],
	targets: [
		.target(name: "Synth016", dependencies: ["ActivityLog", "Synth015", .product(name: "SafeDI", package: "SafeDI")])
	]
)
