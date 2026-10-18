// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth049",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth049", targets: ["Synth049"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth048"),
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0")
	],
	targets: [
		.target(name: "Synth049", dependencies: ["ActivityLog", "Synth048", .product(name: "SafeDI", package: "SafeDI")])
	]
)
