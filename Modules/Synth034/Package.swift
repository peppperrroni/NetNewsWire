// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth034",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth034", targets: ["Synth034"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth033"),
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0")
	],
	targets: [
		.target(name: "Synth034", dependencies: ["ActivityLog", "Synth033", .product(name: "SafeDI", package: "SafeDI")])
	]
)
