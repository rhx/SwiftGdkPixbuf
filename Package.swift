// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "GdkPixbuf",
    products: [
        .library(name: "GdkPixbuf", targets: ["GdkPixbuf"]),
    ],
    dependencies: [
        .package(url: "https://github.com/rhx/CGdkPixbuf.git", .branch("master")),
        .package(url: "https://github.com/rhx/SwiftGIO.git", .branch("master")),
        .package(url: "https://github.com/rhx/SwiftGModule.git", .branch("master")),
    ],
    targets: [
        .target(name: "GdkPixbuf", dependencies: ["GIO", "GModule"]),
        .testTarget(name: "GdkPixbufTests", dependencies: ["GdkPixbuf"]),
    ]
)
