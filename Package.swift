// swift-tools-version:6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdventOfCodeUtilities",
    platforms: [
        .macOS(.v15),
    ],
    products: [
        .library(
            name: "AdventOfCodeUtilities",
            targets: ["AdventOfCodeUtilities"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/apple/swift-argument-parser",
            from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "AdventOfCodeUtilities",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ])
    ]
)
