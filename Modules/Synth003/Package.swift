// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth003",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth003", targets: ["Synth003"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth002"),
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0")
	],
	targets: [
		.target(name: "Synth003", dependencies: ["ActivityLog", "Synth002", .product(name: "SafeDI", package: "SafeDI")])
	]
)
