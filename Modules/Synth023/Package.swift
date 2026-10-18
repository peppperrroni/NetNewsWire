// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth023",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth023", targets: ["Synth023"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth022"),
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0")
	],
	targets: [
		.target(name: "Synth023", dependencies: ["ActivityLog", "Synth022", .product(name: "SafeDI", package: "SafeDI")])
	]
)
