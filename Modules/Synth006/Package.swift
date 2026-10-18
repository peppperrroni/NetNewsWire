// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth006",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth006", targets: ["Synth006"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth005"),
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0")
	],
	targets: [
		.target(name: "Synth006", dependencies: ["ActivityLog", "Synth005", .product(name: "SafeDI", package: "SafeDI")])
	]
)
