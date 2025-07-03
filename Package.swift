// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CommonUISample",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "CommonUISample",
            targets: ["CommonUISample"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "CommonUISample",
            resources: [
                // Include specific files or folders
                .process("Resources"),       // Will include everything inside
                .process("Assets.xcassets")  // Will include XCAssets
            ]
        ),
        .testTarget(
            name: "CommonUISampleTests",
            dependencies: ["CommonUISample"]
        ),
    ]
)
