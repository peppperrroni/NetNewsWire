// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth024",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth024", targets: ["Synth024"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth023"),
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0")
	],
	targets: [
		.target(name: "Synth024", dependencies: ["ActivityLog", "Synth023", .product(name: "SafeDI", package: "SafeDI")])
	]
)
