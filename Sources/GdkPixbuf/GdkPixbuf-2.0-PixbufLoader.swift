import CGLib
import CGdkPixbuf
import GLib
import GIO
import GModule
import GLibObject

// MARK: - PixbufLoader Class

/// The `PixbufLoaderProtocol` protocol exposes the methods and properties of an underlying `GdkPixbufLoader` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PixbufLoader`.
/// Alternatively, use `PixbufLoaderRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The GdkPixbufLoader struct contains only private
/// fields.
public protocol PixbufLoaderProtocol: ObjectProtocol {
        /// Untyped pointer to the underlying `GdkPixbufLoader` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkPixbufLoader` instance.
    var pixbuf_loader_ptr: UnsafeMutablePointer<GdkPixbufLoader>! { get }

}

/// The `PixbufLoaderRef` type acts as a lightweight Swift reference to an underlying `GdkPixbufLoader` instance.
/// It exposes methods that can operate on this data type through `PixbufLoaderProtocol` conformance.
/// Use `PixbufLoaderRef` only as an `unowned` reference to an existing `GdkPixbufLoader` instance.
///
/// The GdkPixbufLoader struct contains only private
/// fields.
public struct PixbufLoaderRef: PixbufLoaderProtocol {
        /// Untyped pointer to the underlying `GdkPixbufLoader` instance.
    /// For type-safe access, use the generated, typed pointer `pixbuf_loader_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PixbufLoaderRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkPixbufLoader>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkPixbufLoader>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkPixbufLoader>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkPixbufLoader>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `PixbufLoaderProtocol`
    @inlinable init<T: PixbufLoaderProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufLoaderProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufLoaderProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufLoaderProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufLoaderProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufLoaderProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new pixbuf loader object.
    @inlinable init() {
        let rv = gdk_pixbuf_loader_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new pixbuf loader object that always attempts to parse
    /// image data as if it were an image of mime type `mime_type`, instead of
    /// identifying the type automatically. Useful if you want an error if
    /// the image isn't the expected mime type, for loading image formats
    /// that can't be reliably identified by looking at the data, or if
    /// the user manually forces a specific mime type.
    /// 
    /// The list of supported mime types depends on what image loaders
    /// are installed, but typically "image/png", "image/jpeg", "image/gif",
    /// "image/tiff" and "image/x-xpixmap" are among the supported mime types.
    /// To obtain the full list of supported mime types, call
    /// `gdk_pixbuf_format_get_mime_types()` on each of the `GdkPixbufFormat`
    /// structs returned by `gdk_pixbuf_get_formats()`.
    @inlinable init(mimeType mime_type: UnsafePointer<CChar>!) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gdk_pixbuf_loader_new_with_mime_type(mime_type, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new pixbuf loader object that always attempts to parse
    /// image data as if it were an image of type `image_type`, instead of
    /// identifying the type automatically. Useful if you want an error if
    /// the image isn't the expected type, for loading image formats
    /// that can't be reliably identified by looking at the data, or if
    /// the user manually forces a specific type.
    /// 
    /// The list of supported image formats depends on what image loaders
    /// are installed, but typically "png", "jpeg", "gif", "tiff" and
    /// "xpm" are among the supported formats. To obtain the full list of
    /// supported image formats, call `gdk_pixbuf_format_get_name()` on each
    /// of the `GdkPixbufFormat` structs returned by `gdk_pixbuf_get_formats()`.
    @inlinable init(type image_type: UnsafePointer<CChar>!) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gdk_pixbuf_loader_new_with_type(image_type, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new pixbuf loader object that always attempts to parse
    /// image data as if it were an image of mime type `mime_type`, instead of
    /// identifying the type automatically. Useful if you want an error if
    /// the image isn't the expected mime type, for loading image formats
    /// that can't be reliably identified by looking at the data, or if
    /// the user manually forces a specific mime type.
    /// 
    /// The list of supported mime types depends on what image loaders
    /// are installed, but typically "image/png", "image/jpeg", "image/gif",
    /// "image/tiff" and "image/x-xpixmap" are among the supported mime types.
    /// To obtain the full list of supported mime types, call
    /// `gdk_pixbuf_format_get_mime_types()` on each of the `GdkPixbufFormat`
    /// structs returned by `gdk_pixbuf_get_formats()`.
    @inlinable static func newWith(mimeType mime_type: UnsafePointer<CChar>!) throws -> PixbufLoaderRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = PixbufLoaderRef(gconstpointer: gconstpointer(gdk_pixbuf_loader_new_with_mime_type(mime_type, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Creates a new pixbuf loader object that always attempts to parse
    /// image data as if it were an image of type `image_type`, instead of
    /// identifying the type automatically. Useful if you want an error if
    /// the image isn't the expected type, for loading image formats
    /// that can't be reliably identified by looking at the data, or if
    /// the user manually forces a specific type.
    /// 
    /// The list of supported image formats depends on what image loaders
    /// are installed, but typically "png", "jpeg", "gif", "tiff" and
    /// "xpm" are among the supported formats. To obtain the full list of
    /// supported image formats, call `gdk_pixbuf_format_get_name()` on each
    /// of the `GdkPixbufFormat` structs returned by `gdk_pixbuf_get_formats()`.
    @inlinable static func newWith(type image_type: UnsafePointer<CChar>!) throws -> PixbufLoaderRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = PixbufLoaderRef(gconstpointer: gconstpointer(gdk_pixbuf_loader_new_with_type(image_type, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }
}

/// The `PixbufLoader` type acts as a reference-counted owner of an underlying `GdkPixbufLoader` instance.
/// It provides the methods that can operate on this data type through `PixbufLoaderProtocol` conformance.
/// Use `PixbufLoader` as a strong reference or owner of a `GdkPixbufLoader` instance.
///
/// The GdkPixbufLoader struct contains only private
/// fields.
open class PixbufLoader: Object, PixbufLoaderProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufLoader` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkPixbufLoader>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufLoader` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkPixbufLoader>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufLoader` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufLoader` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufLoader` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkPixbufLoader>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufLoader` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkPixbufLoader>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkPixbufLoader`.
    /// i.e., ownership is transferred to the `PixbufLoader` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkPixbufLoader>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `PixbufLoaderProtocol`
    /// Will retain `GdkPixbufLoader`.
    /// - Parameter other: an instance of a related type that implements `PixbufLoaderProtocol`
    @inlinable public init<T: PixbufLoaderProtocol>(pixbufLoader other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufLoaderProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufLoaderProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufLoaderProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufLoaderProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufLoaderProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufLoaderProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufLoaderProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufLoaderProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new pixbuf loader object.
    @inlinable public init() {
        let rv = gdk_pixbuf_loader_new()
        super.init(gpointer: (rv))
    }

    /// Creates a new pixbuf loader object that always attempts to parse
    /// image data as if it were an image of mime type `mime_type`, instead of
    /// identifying the type automatically. Useful if you want an error if
    /// the image isn't the expected mime type, for loading image formats
    /// that can't be reliably identified by looking at the data, or if
    /// the user manually forces a specific mime type.
    /// 
    /// The list of supported mime types depends on what image loaders
    /// are installed, but typically "image/png", "image/jpeg", "image/gif",
    /// "image/tiff" and "image/x-xpixmap" are among the supported mime types.
    /// To obtain the full list of supported mime types, call
    /// `gdk_pixbuf_format_get_mime_types()` on each of the `GdkPixbufFormat`
    /// structs returned by `gdk_pixbuf_get_formats()`.
    @inlinable public init(mimeType mime_type: UnsafePointer<CChar>!) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gdk_pixbuf_loader_new_with_mime_type(mime_type, &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: (rv))
    }

    /// Creates a new pixbuf loader object that always attempts to parse
    /// image data as if it were an image of type `image_type`, instead of
    /// identifying the type automatically. Useful if you want an error if
    /// the image isn't the expected type, for loading image formats
    /// that can't be reliably identified by looking at the data, or if
    /// the user manually forces a specific type.
    /// 
    /// The list of supported image formats depends on what image loaders
    /// are installed, but typically "png", "jpeg", "gif", "tiff" and
    /// "xpm" are among the supported formats. To obtain the full list of
    /// supported image formats, call `gdk_pixbuf_format_get_name()` on each
    /// of the `GdkPixbufFormat` structs returned by `gdk_pixbuf_get_formats()`.
    @inlinable public init(type image_type: UnsafePointer<CChar>!) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gdk_pixbuf_loader_new_with_type(image_type, &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: (rv))
    }

    /// Creates a new pixbuf loader object that always attempts to parse
    /// image data as if it were an image of mime type `mime_type`, instead of
    /// identifying the type automatically. Useful if you want an error if
    /// the image isn't the expected mime type, for loading image formats
    /// that can't be reliably identified by looking at the data, or if
    /// the user manually forces a specific mime type.
    /// 
    /// The list of supported mime types depends on what image loaders
    /// are installed, but typically "image/png", "image/jpeg", "image/gif",
    /// "image/tiff" and "image/x-xpixmap" are among the supported mime types.
    /// To obtain the full list of supported mime types, call
    /// `gdk_pixbuf_format_get_mime_types()` on each of the `GdkPixbufFormat`
    /// structs returned by `gdk_pixbuf_get_formats()`.
    @inlinable public static func newWith(mimeType mime_type: UnsafePointer<CChar>!) throws -> PixbufLoader! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = PixbufLoader(gconstpointer: gconstpointer(gdk_pixbuf_loader_new_with_mime_type(mime_type, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Creates a new pixbuf loader object that always attempts to parse
    /// image data as if it were an image of type `image_type`, instead of
    /// identifying the type automatically. Useful if you want an error if
    /// the image isn't the expected type, for loading image formats
    /// that can't be reliably identified by looking at the data, or if
    /// the user manually forces a specific type.
    /// 
    /// The list of supported image formats depends on what image loaders
    /// are installed, but typically "png", "jpeg", "gif", "tiff" and
    /// "xpm" are among the supported formats. To obtain the full list of
    /// supported image formats, call `gdk_pixbuf_format_get_name()` on each
    /// of the `GdkPixbufFormat` structs returned by `gdk_pixbuf_get_formats()`.
    @inlinable public static func newWith(type image_type: UnsafePointer<CChar>!) throws -> PixbufLoader! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = PixbufLoader(gconstpointer: gconstpointer(gdk_pixbuf_loader_new_with_type(image_type, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

}

// MARK: no PixbufLoader properties

public enum PixbufLoaderSignalName: String, SignalNameProtocol {
    /// This signal is emitted when the pixbuf loader has allocated the
    /// pixbuf in the desired size.  After this signal is emitted,
    /// applications can call `gdk_pixbuf_loader_get_pixbuf()` to fetch
    /// the partially-loaded pixbuf.
    case areaPrepared = "area-prepared"
    /// This signal is emitted when a significant area of the image being
    /// loaded has been updated.  Normally it means that a complete
    /// scanline has been read in, but it could be a different area as
    /// well.  Applications can use this signal to know when to repaint
    /// areas of an image that is being loaded.
    case areaUpdated = "area-updated"
    /// This signal is emitted when `gdk_pixbuf_loader_close()` is called.
    /// It can be used by different parts of an application to receive
    /// notification when an image loader is closed by the code that
    /// drives it.
    case closed = "closed"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// This signal is emitted when the pixbuf loader has been fed the
    /// initial amount of data that is required to figure out the size
    /// of the image that it will create.  Applications can call
    /// `gdk_pixbuf_loader_set_size()` in response to this signal to set
    /// the desired size to which the image should be scaled.
    case sizePrepared = "size-prepared"

}

public extension PixbufLoaderProtocol {
    /// Connect a `PixbufLoaderSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: PixbufLoaderSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

// MARK: PixbufLoader Class: PixbufLoaderProtocol extension (methods and fields)
public extension PixbufLoaderProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkPixbufLoader` instance.
    @inlinable var pixbuf_loader_ptr: UnsafeMutablePointer<GdkPixbufLoader>! { return ptr?.assumingMemoryBound(to: GdkPixbufLoader.self) }

    /// Informs a pixbuf loader that no further writes with
    /// `gdk_pixbuf_loader_write()` will occur, so that it can free its
    /// internal loading structures. Also, tries to parse any data that
    /// hasn't yet been parsed; if the remaining data is partial or
    /// corrupt, an error will be returned.  If `false` is returned, `error`
    /// will be set to an error from the `GDK_PIXBUF_ERROR` or `G_FILE_ERROR`
    /// domains. If you're just cancelling a load rather than expecting it
    /// to be finished, passing `nil` for `error` to ignore it is
    /// reasonable.
    /// 
    /// Remember that this does not unref the loader, so if you plan not to
    /// use it anymore, please `g_object_unref()` it.
    @inlinable func close() throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gdk_pixbuf_loader_close(pixbuf_loader_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Queries the `GdkPixbufAnimation` that a pixbuf loader is currently creating.
    /// In general it only makes sense to call this function after the "area-prepared"
    /// signal has been emitted by the loader. If the loader doesn't have enough
    /// bytes yet (hasn't emitted the "area-prepared" signal) this function will
    /// return `nil`.
    @inlinable func getAnimation() -> PixbufAnimationRef! {
        let rv = PixbufAnimationRef(gconstpointer: gconstpointer(gdk_pixbuf_loader_get_animation(pixbuf_loader_ptr)))
        return rv
    }

    /// Obtains the available information about the format of the
    /// currently loading image file.
    @inlinable func getFormat() -> PixbufFormatRef! {
        let rv = PixbufFormatRef(gconstpointer: gconstpointer(gdk_pixbuf_loader_get_format(pixbuf_loader_ptr)))
        return rv
    }

    /// Queries the `GdkPixbuf` that a pixbuf loader is currently creating.
    /// In general it only makes sense to call this function after the
    /// "area-prepared" signal has been emitted by the loader; this means
    /// that enough data has been read to know the size of the image that
    /// will be allocated.  If the loader has not received enough data via
    /// `gdk_pixbuf_loader_write()`, then this function returns `nil`.  The
    /// returned pixbuf will be the same in all future calls to the loader,
    /// so simply calling `g_object_ref()` should be sufficient to continue
    /// using it.  Additionally, if the loader is an animation, it will
    /// return the "static image" of the animation
    /// (see `gdk_pixbuf_animation_get_static_image()`).
    @inlinable func getPixbuf() -> PixbufRef! {
        let rv = PixbufRef(gconstpointer: gconstpointer(gdk_pixbuf_loader_get_pixbuf(pixbuf_loader_ptr)))
        return rv
    }

    /// Causes the image to be scaled while it is loaded. The desired
    /// image size can be determined relative to the original size of
    /// the image by calling `gdk_pixbuf_loader_set_size()` from a
    /// signal handler for the `size`-prepared signal.
    /// 
    /// Attempts to set the desired image size  are ignored after the
    /// emission of the `size`-prepared signal.
    @inlinable func setSize(width: Int, height: Int) {
        gdk_pixbuf_loader_set_size(pixbuf_loader_ptr, gint(width), gint(height))
    
    }

    /// This will cause a pixbuf loader to parse the next `count` bytes of
    /// an image.  It will return `true` if the data was loaded successfully,
    /// and `false` if an error occurred.  In the latter case, the loader
    /// will be closed, and will not accept further writes. If `false` is
    /// returned, `error` will be set to an error from the `GDK_PIXBUF_ERROR`
    /// or `G_FILE_ERROR` domains.
    @inlinable func write(buf: UnsafePointer<guchar>!, count: Int) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gdk_pixbuf_loader_write(pixbuf_loader_ptr, buf, gsize(count), &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// This will cause a pixbuf loader to parse a buffer inside a `GBytes`
    /// for an image.  It will return `true` if the data was loaded successfully,
    /// and `false` if an error occurred.  In the latter case, the loader
    /// will be closed, and will not accept further writes. If `false` is
    /// returned, `error` will be set to an error from the `GDK_PIXBUF_ERROR`
    /// or `G_FILE_ERROR` domains.
    /// 
    /// See also: `gdk_pixbuf_loader_write()`
    @inlinable func writeBytes<BytesT: BytesProtocol>(buffer: BytesT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gdk_pixbuf_loader_write_bytes(pixbuf_loader_ptr, buffer.bytes_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Queries the `GdkPixbufAnimation` that a pixbuf loader is currently creating.
    /// In general it only makes sense to call this function after the "area-prepared"
    /// signal has been emitted by the loader. If the loader doesn't have enough
    /// bytes yet (hasn't emitted the "area-prepared" signal) this function will
    /// return `nil`.
    @inlinable var animation: PixbufAnimationRef! {
        /// Queries the `GdkPixbufAnimation` that a pixbuf loader is currently creating.
        /// In general it only makes sense to call this function after the "area-prepared"
        /// signal has been emitted by the loader. If the loader doesn't have enough
        /// bytes yet (hasn't emitted the "area-prepared" signal) this function will
        /// return `nil`.
        get {
            let rv = PixbufAnimationRef(gconstpointer: gconstpointer(gdk_pixbuf_loader_get_animation(pixbuf_loader_ptr)))
            return rv
        }
    }

    /// Obtains the available information about the format of the
    /// currently loading image file.
    @inlinable var format: PixbufFormatRef! {
        /// Obtains the available information about the format of the
        /// currently loading image file.
        get {
            let rv = PixbufFormatRef(gconstpointer: gconstpointer(gdk_pixbuf_loader_get_format(pixbuf_loader_ptr)))
            return rv
        }
    }

    /// Queries the `GdkPixbuf` that a pixbuf loader is currently creating.
    /// In general it only makes sense to call this function after the
    /// "area-prepared" signal has been emitted by the loader; this means
    /// that enough data has been read to know the size of the image that
    /// will be allocated.  If the loader has not received enough data via
    /// `gdk_pixbuf_loader_write()`, then this function returns `nil`.  The
    /// returned pixbuf will be the same in all future calls to the loader,
    /// so simply calling `g_object_ref()` should be sufficient to continue
    /// using it.  Additionally, if the loader is an animation, it will
    /// return the "static image" of the animation
    /// (see `gdk_pixbuf_animation_get_static_image()`).
    @inlinable var pixbuf: PixbufRef! {
        /// Queries the `GdkPixbuf` that a pixbuf loader is currently creating.
        /// In general it only makes sense to call this function after the
        /// "area-prepared" signal has been emitted by the loader; this means
        /// that enough data has been read to know the size of the image that
        /// will be allocated.  If the loader has not received enough data via
        /// `gdk_pixbuf_loader_write()`, then this function returns `nil`.  The
        /// returned pixbuf will be the same in all future calls to the loader,
        /// so simply calling `g_object_ref()` should be sufficient to continue
        /// using it.  Additionally, if the loader is an animation, it will
        /// return the "static image" of the animation
        /// (see `gdk_pixbuf_animation_get_static_image()`).
        get {
            let rv = PixbufRef(gconstpointer: gconstpointer(gdk_pixbuf_loader_get_pixbuf(pixbuf_loader_ptr)))
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = pixbuf_loader_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



