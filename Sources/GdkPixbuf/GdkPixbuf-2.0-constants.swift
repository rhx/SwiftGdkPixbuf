import CGLib
import CGdkPixbuf
import GLib
import GIO
import GModule
import GLibObject

public let PIXBUF_FEATURES_H = GDK_PIXBUF_FEATURES_H /* gint 1 */

/// Major version of gdk-pixbuf library, that is the "0" in
/// "0.8.2" for example.
public let PIXBUF_MAJOR = GDK_PIXBUF_MAJOR /* gint 2 */

/// Micro version of gdk-pixbuf library, that is the "2" in
/// "0.8.2" for example.
public let PIXBUF_MICRO = GDK_PIXBUF_MICRO /* gint 2 */

/// Minor version of gdk-pixbuf library, that is the "8" in
/// "0.8.2" for example.
public let PIXBUF_MINOR = GDK_PIXBUF_MINOR /* gint 38 */

/// Contains the full version of the gdk-pixbuf header as a string.
/// This is the version being compiled against; contrast with
/// `gdk_pixbuf_version`.
public let PIXBUF_VERSION = GDK_PIXBUF_VERSION /* utf8 4 */
