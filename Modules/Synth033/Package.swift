// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth033",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth033", targets: ["Synth033"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth032"),
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0")
	],
	targets: [
		.target(name: "Synth033", dependencies: ["ActivityLog", "Synth032", .product(name: "SafeDI", package: "SafeDI")])
	]
)
