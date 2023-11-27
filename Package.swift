// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Hari",
	platforms: [.iOS(.v13)],
    products: [
		.library(
			name: "Hari",
			targets: ["Hari"]
		),
	],
    dependencies: [],
    targets: [
        .target(
            name: "Hari",
            dependencies: []
		)
    ]
)
