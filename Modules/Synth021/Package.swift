// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth021",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth021", targets: ["Synth021"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth020"),
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0")
	],
	targets: [
		.target(name: "Synth021", dependencies: ["ActivityLog", "Synth020", .product(name: "SafeDI", package: "SafeDI")])
	]
)
