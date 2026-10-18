// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth001",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth001", targets: ["Synth001"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0")
	],
	targets: [
		.target(name: "Synth001", dependencies: ["ActivityLog", .product(name: "SafeDI", package: "SafeDI")])
	]
)
