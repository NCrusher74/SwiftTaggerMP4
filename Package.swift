// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftTaggerMP4",
    products: [
        .library(
            name: "SwiftTaggerMP4",
            targets: ["SwiftTaggerMP4"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/apple/swift-se0270-range-set",
            from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "SwiftTaggerMP4",
            dependencies: [
                .product(name: "SE0270_RangeSet", package: "swift-se0270-range-set")],
            path: "Sources"),
        .testTarget(
            name: "SwiftTaggerMP4Tests",
            dependencies: ["SwiftTaggerMP4"]),
    ]
)
