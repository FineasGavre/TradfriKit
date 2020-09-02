// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TradfriKit",
    platforms: [
        .macOS(.v10_14),
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "TradfriKit",
            targets: ["TradfriKit"]),
    ],
    dependencies: [

    ],
    targets: [
        .target(
            name: "TradfriKit",
            dependencies: []),
        .testTarget(
            name: "TradfriKitTests",
            dependencies: ["TradfriKit"]),
    ]
)
