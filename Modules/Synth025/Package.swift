// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth025",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth025", targets: ["Synth025"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth024"),
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0")
	],
	targets: [
		.target(name: "Synth025", dependencies: ["ActivityLog", "Synth024", .product(name: "SafeDI", package: "SafeDI")])
	]
)
