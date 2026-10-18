// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth026",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth026", targets: ["Synth026"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth025"),
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0")
	],
	targets: [
		.target(name: "Synth026", dependencies: ["ActivityLog", "Synth025", .product(name: "SafeDI", package: "SafeDI")])
	]
)
