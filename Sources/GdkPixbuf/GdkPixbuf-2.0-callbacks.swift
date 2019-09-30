import CGLib
import CGdkPixbuf
import GLib
import GIO
import GModule
import GLibObject

/// A function of this type is responsible for freeing the pixel array
/// of a pixbuf.  The gdk_pixbuf_new_from_data() function lets you
/// pass in a pre-allocated pixel array so that a pixbuf can be
/// created from it; in this case you will need to pass in a function
/// of `GdkPixbufDestroyNotify` so that the pixel data can be freed
/// when the pixbuf is finalized.
public typealias PixbufDestroyNotify = GdkPixbufDestroyNotify

/// Specifies the type of the function passed to
/// gdk_pixbuf_save_to_callback().  It is called once for each block of
/// bytes that is "written" by gdk_pixbuf_save_to_callback().  If
/// successful it should return `true`.  If an error occurs it should set
/// `error` and return `false`, in which case gdk_pixbuf_save_to_callback()
/// will fail with the same error.
public typealias PixbufSaveFunc = GdkPixbufSaveFunc
