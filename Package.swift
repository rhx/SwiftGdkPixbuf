// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "GdkPixbuf",
    products: [ .library(name: "GdkPixbuf", targets: ["GdkPixbuf"]) ],
    dependencies: [
        .package(url: "https://github.com/rhx/gir2swift.git",     branch: "development"),
        .package(url: "https://github.com/rhx/SwiftGIO.git",      branch: "development"),
        .package(url: "https://github.com/rhx/SwiftGModule.git",  branch: "development"),
    ],
    targets: [
	.systemLibrary(name: "CGdkPixbuf", pkgConfig: "gdk-pixbuf-2.0",
	    providers: [
		.brew(["gdk-pixbuf", "glib", "glib-networking", "gobject-introspection"]),
		.apt(["libgdk-pixbuf2.0-dev", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
	    ]),
        .target(
            name: "GdkPixbuf", 
            dependencies: [
                "CGdkPixbuf",
                .product(name: "gir2swift", package: "gir2swift"),
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
        .testTarget(name: "GdkPixbufTests", dependencies: ["GdkPixbuf"]),
    ]
)
