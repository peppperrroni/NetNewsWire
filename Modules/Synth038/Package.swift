// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth038",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth038", targets: ["Synth038"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth037"),
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0")
	],
	targets: [
		.target(name: "Synth038", dependencies: ["ActivityLog", "Synth037", .product(name: "SafeDI", package: "SafeDI")])
	]
)
