// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "ATmega1284",
    products: [
        .library(
            name: "ATmega1284",
            targets: ["ATmega1284"]),
    ],
    dependencies: [.package(path: "/Users/carl/Documents/Code/HALGEN/build/ATmega1284//../HAL")],
    targets: [
        .target(
            name: "ATmega1284",
            dependencies: [],
            path: ".",
            sources: ["main.swift"]),
    ]
)
