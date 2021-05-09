import CGLib
import CGdkPixbuf
import GLib
import GIO
import GModule
import GLibObject

/// A function of this type is responsible for freeing the pixel array
/// of a pixbuf.
/// 
/// The `gdk_pixbuf_new_from_data()` function lets you pass in a pre-allocated
/// pixel array so that a pixbuf can be created from it; in this case you
/// will need to pass in a function of type `GdkPixbufDestroyNotify` so that
/// the pixel data can be freed when the pixbuf is finalized.
public typealias PixbufDestroyNotify = GdkPixbufDestroyNotify

/// Defines the type of the function used to fill a
/// `GdkPixbufFormat` structure with information about a module.
public typealias PixbufModuleFillInfoFunc = GdkPixbufModuleFillInfoFunc

/// Defines the type of the function used to set the vtable of a
/// `GdkPixbufModule` when it is loaded.
public typealias PixbufModuleFillVtableFunc = GdkPixbufModuleFillVtableFunc

/// Defines the type of the function that gets called once the initial
/// setup of `pixbuf` is done.
/// 
/// `GdkPixbufLoader` uses a function of this type to emit the
/// "&lt;link linkend="GdkPixbufLoader-area-prepared"&gt;area_prepared&lt;/link&gt;"
/// signal.
public typealias PixbufModulePreparedFunc = GdkPixbufModulePreparedFunc

/// Defines the type of the function that gets called once the size
/// of the loaded image is known.
/// 
/// The function is expected to set `width` and `height` to the desired
/// size to which the image should be scaled. If a module has no efficient
/// way to achieve the desired scaling during the loading of the image, it may
/// either ignore the size request, or only approximate it - gdk-pixbuf will
/// then perform the required scaling on the completely loaded image.
/// 
/// If the function sets `width` or `height` to zero, the module should interpret
/// this as a hint that it will be closed soon and shouldn't allocate further
/// resources. This convention is used to implement `gdk_pixbuf_get_file_info()`
/// efficiently.
public typealias PixbufModuleSizeFunc = GdkPixbufModuleSizeFunc

/// Defines the type of the function that gets called every time a region
/// of `pixbuf` is updated.
/// 
/// `GdkPixbufLoader` uses a function of this type to emit the
/// "&lt;link linkend="GdkPixbufLoader-area-updated"&gt;area_updated&lt;/link&gt;"
/// signal.
public typealias PixbufModuleUpdatedFunc = GdkPixbufModuleUpdatedFunc

/// Save functions used by [method`GdkPixbuf.Pixbuf.save_to_callback`].
/// 
/// This function is called once for each block of bytes that is "written"
/// by ``gdk_pixbuf_save_to_callback()``.
/// 
/// If successful it should return `TRUE`; if an error occurs it should set
/// `error` and return `FALSE`, in which case ``gdk_pixbuf_save_to_callback()``
/// will fail with the same error.
public typealias PixbufSaveFunc = GdkPixbufSaveFunc