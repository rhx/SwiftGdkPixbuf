// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "GdkPixbuf",
    products: [
        .library(name: "GdkPixbuf", targets: ["GdkPixbuf"]),
    ],
    dependencies: [
        .package(url: "file:///Users/rh/src/swift/rh/gtk/SwiftGIO", .branch("master")),
        .package(url: "file:///Users/rh/src/swift/rh/gtk/SwiftGModule", .branch("master")),
        //.package(url: "https://github.com/rhx/SwiftGIO.git", .branch("master")),
        //.package(url: "https://github.com/rhx/SwiftGModule.git", .branch("master")),
    ],
    targets: [
	.systemLibrary(name: "CGdkPixbuf", pkgConfig: "cairo glib-2.0 gio-unix-2.0",
	    providers: [
		.brew(["gdk-pixbuf", "glib", "glib-networking", "gobject-introspection"]),
		.apt(["libgdk-pixbuf2.0-dev", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
	    ]),
        .target(name: "GdkPixbuf", dependencies: ["CGdkPixbuf", "GIO", "GModule"]),
        .testTarget(name: "GdkPixbufTests", dependencies: ["GdkPixbuf"]),
    ]
)
