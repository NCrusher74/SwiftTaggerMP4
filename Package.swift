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
            url: "https://github.com/NCrusher74/SwiftLanguageAndLocaleCodes",
            from: "2.0.0"),
        .package(
            url: "https://github.com/NCrusher74/SwiftConvenienceExtensions",
            from: "3.0.0"),
        .package(
            url: "https://github.com/NCrusher74/iTunesGenreID",
            from: "1.0.0"),
        .package(
            name: "StringMetric",
            url: "https://github.com/NCrusher74/StringMetric.swift.git",
            from: "0.0.0"),
    ],
    targets: [
        .target(
            name: "SwiftTaggerMP4",
            dependencies: [
                .product(name: "SwiftLanguageAndLocaleCodes", package: "SwiftLanguageAndLocaleCodes"),
                .product(name: "SwiftConvenienceExtensions", package: "SwiftConvenienceExtensions"),
                .product(name: "iTunesGenreID", package: "iTunesGenreID"),
                .product(name: "StringMetric", package: "StringMetric"),
            ],
            path: "Sources"),
        .testTarget(
            name: "SwiftTaggerMP4Tests",
            dependencies: ["SwiftTaggerMP4"]),
    ]
)
