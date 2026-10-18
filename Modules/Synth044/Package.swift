// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth044",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth044", targets: ["Synth044"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth043"),
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0")
	],
	targets: [
		.target(name: "Synth044", dependencies: ["ActivityLog", "Synth043", .product(name: "SafeDI", package: "SafeDI")])
	]
)
