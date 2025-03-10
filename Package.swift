// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "GdkPixBuf",
    products: [ .library(name: "GdkPixBuf", targets: ["GdkPixBuf"]) ],
    dependencies: [
        .package(url: "https://github.com/rhx/gir2swift.git",     branch: "main"),
        .package(url: "https://github.com/rhx/SwiftGIO.git",      branch: "main"),
        .package(url: "https://github.com/rhx/SwiftGModule.git",  branch: "main"),
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
    ],
    targets: [
	.systemLibrary(name: "CGdkPixbuf", pkgConfig: "gdk-pixbuf-2.0",
	    providers: [
		.brew(["gdk-pixbuf", "glib", "glib-networking", "gobject-introspection"]),
		.apt(["libgdk-pixbuf2.0-dev", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
	    ]),
        .target(
            name: "GdkPixBuf", 
            dependencies: [
                "CGdkPixbuf",
                .product(name: "GIO",       package: "SwiftGIO"),
                .product(name: "GModule",   package: "SwiftGModule")
            ],
            swiftSettings: [
                .unsafeFlags(["-suppress-warnings"], .when(configuration: .release)),
                .unsafeFlags(["-suppress-warnings", "-Xfrontend", "-serialize-debugging-options"], .when(configuration: .debug)),
            ],
            plugins: [
                .plugin(name: "gir2swift-plugin", package: "gir2swift")
            ]
        ),
        .testTarget(name: "GdkPixBufTests", dependencies: ["GdkPixBuf"]),
    ]
)
