import CGLib
import CGdkPixbuf
import GLib
import GIO
import GModule
import GLibObject

public func pixbufErrorQuark() -> GQuark {
    let rv = gdk_pixbuf_error_quark()
    return rv
}


