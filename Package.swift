// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "ATmega1284",
    products: [
        .library(
            name: "ATmega1284",
            targets: ["ATmega1284"]),
    ],
    dependencies: [
    .package(url: "https://github.com/microswift-packages/hal-baseline", from: "2.0.0")
    ],
    targets: [
        .target(
            name: "ATmega1284",
            dependencies: [],
            path: ".",
            sources: ["main.swift"]),
    ]
)
