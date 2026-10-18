// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth031",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth031", targets: ["Synth031"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth030"),
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0")
	],
	targets: [
		.target(name: "Synth031", dependencies: ["ActivityLog", "Synth030", .product(name: "SafeDI", package: "SafeDI")])
	]
)
