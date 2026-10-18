// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth052",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth052", targets: ["Synth052"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth051"),
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0")
	],
	targets: [
		.target(name: "Synth052", dependencies: ["ActivityLog", "Synth051", .product(name: "SafeDI", package: "SafeDI")])
	]
)
