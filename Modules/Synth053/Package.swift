// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth053",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth053", targets: ["Synth053"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth052"),
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0")
	],
	targets: [
		.target(name: "Synth053", dependencies: ["ActivityLog", "Synth052", .product(name: "SafeDI", package: "SafeDI")])
	]
)
