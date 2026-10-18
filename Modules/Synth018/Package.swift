// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth018",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth018", targets: ["Synth018"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth017"),
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0")
	],
	targets: [
		.target(name: "Synth018", dependencies: ["ActivityLog", "Synth017", .product(name: "SafeDI", package: "SafeDI")])
	]
)
