// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth030",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth030", targets: ["Synth030"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth029"),
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0")
	],
	targets: [
		.target(name: "Synth030", dependencies: ["ActivityLog", "Synth029", .product(name: "SafeDI", package: "SafeDI")])
	]
)
