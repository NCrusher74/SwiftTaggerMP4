// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftTaggerMP4",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "SwiftTaggerMP4",
            targets: ["SwiftTaggerMP4"]),
    ],
    dependencies: [
        .package(
            name: "Workspace",
            url: "https://github.com/SDGGiesbrecht/Workspace",
            .exact(Version(0, 32, 3))),
        .package(
            url: "https://github.com/apple/swift-se0270-range-set",
            from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "SwiftTaggerMP4",
            dependencies: [
                .product(name: "SE0270_RangeSet", package: "swift-se0270-range-set")],
            path: "Sources"),
        .testTarget(
            name: "SwiftTaggerMP4Tests",
            dependencies: ["SwiftTaggerMP4"]),
        
        // This internal‐only target is not actually needed for anything; the “Workspace.swift” file on its own is sufficient. However, having it also hooked up this way enables Xcode to provide syntax colouring and autocomplete while you are making changes to the configuration.
        .target(
            name: "WorkspaceConfigurationFile",
            dependencies: [.product(name: "WorkspaceConfiguration", package: "Workspace")],
            path: "",
            sources: ["Workspace.swift"]
        )
    ]
)
