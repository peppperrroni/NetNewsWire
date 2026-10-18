// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth061",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth061", targets: ["Synth061"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth060"),
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0")
	],
	targets: [
		.target(name: "Synth061", dependencies: ["ActivityLog", "Synth060", .product(name: "SafeDI", package: "SafeDI")])
	]
)
