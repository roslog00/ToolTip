// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ToolTip",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ToolTip",
            targets: ["ToolTip", "Constants", "Components", "ViewModifiers"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(name: "ToolTip"),
        .target(name: "Constants"),
        .target(name: "Components"),
        .target(name: "ViewModifiers")
    ]
)
