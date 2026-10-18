// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth014",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth014", targets: ["Synth014"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth013"),
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0")
	],
	targets: [
		.target(name: "Synth014", dependencies: ["ActivityLog", "Synth013", .product(name: "SafeDI", package: "SafeDI")])
	]
)
