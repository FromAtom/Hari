// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Hari",
	platforms: [.iOS(.v10)],
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
            dependencies: [],
            path: "Hari"
		)
    ],
	swiftLanguageVersions: [.v5]
)
