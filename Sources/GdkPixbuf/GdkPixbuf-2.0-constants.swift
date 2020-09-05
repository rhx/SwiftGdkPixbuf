import CGLib
import CGdkPixbuf
import GLib
import GIO
import GModule
import GLibObject

public let PIXBUF_FEATURES_H = GDK_PIXBUF_FEATURES_H // 1

/// Major version of gdk-pixbuf library, that is the "0" in
/// "0.8.2" for example.
public let PIXBUF_MAJOR = GDK_PIXBUF_MAJOR // 2

/// Micro version of gdk-pixbuf library, that is the "2" in
/// "0.8.2" for example.
public let PIXBUF_MICRO = GDK_PIXBUF_MICRO // 0

/// Minor version of gdk-pixbuf library, that is the "8" in
/// "0.8.2" for example.
public let PIXBUF_MINOR = GDK_PIXBUF_MINOR // 40

/// Contains the full version of the gdk-pixbuf header as a string.
/// This is the version being compiled against; contrast with
/// `gdk_pixbuf_version`.
public let PIXBUF_VERSION = GDK_PIXBUF_VERSION // 4