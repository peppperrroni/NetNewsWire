// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth058",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth058", targets: ["Synth058"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth057"),
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0")
	],
	targets: [
		.target(name: "Synth058", dependencies: ["ActivityLog", "Synth057", .product(name: "SafeDI", package: "SafeDI")])
	]
)
