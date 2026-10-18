// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth017",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth017", targets: ["Synth017"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth016"),
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0")
	],
	targets: [
		.target(name: "Synth017", dependencies: ["ActivityLog", "Synth016", .product(name: "SafeDI", package: "SafeDI")])
	]
)
