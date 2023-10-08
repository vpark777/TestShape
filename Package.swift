// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Shapes",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Triangle",
            targets: ["Triangle"]),
        .library(
            name: "Star",
            targets: ["Star"]),
        .library(
            name: "CrescentMoon",
            targets: ["CrescentMoon"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Triangle",
            path: "Sources/Triangle"),
        .target(
            name: "Star",
            path: "Sources/Star"),
        .target(
            name: "CrescentMoon",
            path: "Sources/CrescentMoon")
    ]
)
