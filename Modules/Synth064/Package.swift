// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth064",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth064", targets: ["Synth064"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth063"),
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0")
	],
	targets: [
		.target(name: "Synth064", dependencies: ["ActivityLog", "Synth063", .product(name: "SafeDI", package: "SafeDI")])
	]
)
