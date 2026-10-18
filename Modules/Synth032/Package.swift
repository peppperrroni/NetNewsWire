// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth032",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth032", targets: ["Synth032"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth031"),
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0")
	],
	targets: [
		.target(name: "Synth032", dependencies: ["ActivityLog", "Synth031", .product(name: "SafeDI", package: "SafeDI")])
	]
)
