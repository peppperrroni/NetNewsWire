// swift-tools-version:6.2
import PackageDescription

// Synthetic package for the Phase 2b package-scaling curve.
let package = Package(
	name: "Synth027",
	platforms: [.macOS(.v15), .iOS(.v17)],
	products: [
		.library(name: "Synth027", targets: ["Synth027"])
	],
	dependencies: [
		.package(path: "../ActivityLog"),
		.package(path: "../Synth026"),
		.package(url: "https://github.com/dfed/SafeDI", exact: "2.0.0")
	],
	targets: [
		.target(name: "Synth027", dependencies: ["ActivityLog", "Synth026", .product(name: "SafeDI", package: "SafeDI")])
	]
)
