import CGLib
import CGdkPixbuf
import GLib
import GIO
import GModule
import GLibObject

// MARK: - PixbufFormat Record

/// The `PixbufFormatProtocol` protocol exposes the methods and properties of an underlying `GdkPixbufFormat` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PixbufFormat`.
/// Alternatively, use `PixbufFormatRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PixbufFormatProtocol {
    /// Untyped pointer to the underlying `GdkPixbufFormat` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkPixbufFormat` instance.
    var pixbuf_format_ptr: UnsafeMutablePointer<GdkPixbufFormat> { get }
}

/// The `PixbufFormatRef` type acts as a lightweight Swift reference to an underlying `GdkPixbufFormat` instance.
/// It exposes methods that can operate on this data type through `PixbufFormatProtocol` conformance.
/// Use `PixbufFormatRef` only as an `unowned` reference to an existing `GdkPixbufFormat` instance.
///

public struct PixbufFormatRef: PixbufFormatProtocol {
    /// Untyped pointer to the underlying `GdkPixbufFormat` instance.
    /// For type-safe access, use the generated, typed pointer `pixbuf_format_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PixbufFormatRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkPixbufFormat>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PixbufFormatProtocol`
    init<T: PixbufFormatProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufFormatProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufFormatProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufFormatProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufFormatProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufFormatProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PixbufFormat` type acts as an owner of an underlying `GdkPixbufFormat` instance.
/// It provides the methods that can operate on this data type through `PixbufFormatProtocol` conformance.
/// Use `PixbufFormat` as a strong reference or owner of a `GdkPixbufFormat` instance.
///

open class PixbufFormat: PixbufFormatProtocol {
    /// Untyped pointer to the underlying `GdkPixbufFormat` instance.
    /// For type-safe access, use the generated, typed pointer `pixbuf_format_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `PixbufFormat` instance.
    public init(_ op: UnsafeMutablePointer<GdkPixbufFormat>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `PixbufFormatProtocol`
    /// `GdkPixbufFormat` does not allow reference counting.
    public convenience init<T: PixbufFormatProtocol>(_ other: T) {
        self.init(cast(other.pixbuf_format_ptr))
        // no reference counting for GdkPixbufFormat, cannot ref(cast(pixbuf_format_ptr))
    }

    /// Do-nothing destructor for`GdkPixbufFormat`.
    deinit {
        // no reference counting for GdkPixbufFormat, cannot unref(cast(pixbuf_format_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufFormatProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GdkPixbufFormat.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufFormatProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GdkPixbufFormat.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufFormatProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GdkPixbufFormat.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufFormatProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GdkPixbufFormat>(opaquePointer))
    }



}

// MARK: - no PixbufFormat properties

// MARK: - no signals


public extension PixbufFormatProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkPixbufFormat` instance.
    var pixbuf_format_ptr: UnsafeMutablePointer<GdkPixbufFormat> { return ptr.assumingMemoryBound(to: GdkPixbufFormat.self) }

    /// Creates a copy of `format`
    func copy() -> UnsafeMutablePointer<GdkPixbufFormat>! {
        let rv = gdk_pixbuf_format_copy(cast(pixbuf_format_ptr))
        return cast(rv)
    }

    /// Frees the resources allocated when copying a `GdkPixbufFormat`
    /// using gdk_pixbuf_format_copy()
    func free() {
        gdk_pixbuf_format_free(cast(pixbuf_format_ptr))
    
    }

    /// Returns a description of the format.
    func getDescription() -> String! {
        let rv = gdk_pixbuf_format_get_description(cast(pixbuf_format_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Returns the filename extensions typically used for files in the
    /// given format.
    func getExtensions() -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        let rv = gdk_pixbuf_format_get_extensions(cast(pixbuf_format_ptr))
        return cast(rv)
    }

    /// Returns information about the license of the image loader for the format. The
    /// returned string should be a shorthand for a wellknown license, e.g. "LGPL",
    /// "GPL", "QPL", "GPL/QPL", or "other" to indicate some other license.  This
    /// string should be freed with g_free() when it's no longer needed.
    func getLicense() -> String! {
        let rv = gdk_pixbuf_format_get_license(cast(pixbuf_format_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Returns the mime types supported by the format.
    func getMimeTypes() -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        let rv = gdk_pixbuf_format_get_mime_types(cast(pixbuf_format_ptr))
        return cast(rv)
    }

    /// Returns the name of the format.
    func getName() -> String! {
        let rv = gdk_pixbuf_format_get_name(cast(pixbuf_format_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Returns `true` if the save option specified by `option_key` is supported when
    /// saving a pixbuf using the module implementing `format`.
    /// See gdk_pixbuf_save() for more information about option keys.
    func isSaveOptionSupported(optionKey option_key: UnsafePointer<gchar>) -> Bool {
        let rv = gdk_pixbuf_format_is_save_option_supported(cast(pixbuf_format_ptr), option_key)
        return Bool(rv != 0)
    }

    /// Disables or enables an image format. If a format is disabled,
    /// gdk-pixbuf won't use the image loader for this format to load
    /// images. Applications can use this to avoid using image loaders
    /// with an inappropriate license, see gdk_pixbuf_format_get_license().
    func set(disabled: Bool) {
        gdk_pixbuf_format_set_disabled(cast(pixbuf_format_ptr), gboolean(disabled ? 1 : 0))
    
    }
    /// Returns a description of the format.
    var description: String! {
        /// Returns a description of the format.
        get {
            let rv = gdk_pixbuf_format_get_description(cast(pixbuf_format_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Returns the filename extensions typically used for files in the
    /// given format.
    var extensions: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        /// Returns the filename extensions typically used for files in the
        /// given format.
        get {
            let rv = gdk_pixbuf_format_get_extensions(cast(pixbuf_format_ptr))
            return cast(rv)
        }
    }

    /// Returns whether this image format is disabled. See
    /// gdk_pixbuf_format_set_disabled().
    var isDisabled: Bool {
        /// Returns whether this image format is disabled. See
        /// gdk_pixbuf_format_set_disabled().
        get {
            let rv = gdk_pixbuf_format_is_disabled(cast(pixbuf_format_ptr))
            return Bool(rv != 0)
        }
    }

    /// Returns whether this image format is scalable. If a file is in a
    /// scalable format, it is preferable to load it at the desired size,
    /// rather than loading it at the default size and scaling the
    /// resulting pixbuf to the desired size.
    var isScalable: Bool {
        /// Returns whether this image format is scalable. If a file is in a
        /// scalable format, it is preferable to load it at the desired size,
        /// rather than loading it at the default size and scaling the
        /// resulting pixbuf to the desired size.
        get {
            let rv = gdk_pixbuf_format_is_scalable(cast(pixbuf_format_ptr))
            return Bool(rv != 0)
        }
    }

    /// Returns whether pixbufs can be saved in the given format.
    var isWritable: Bool {
        /// Returns whether pixbufs can be saved in the given format.
        get {
            let rv = gdk_pixbuf_format_is_writable(cast(pixbuf_format_ptr))
            return Bool(rv != 0)
        }
    }

    /// Returns information about the license of the image loader for the format. The
    /// returned string should be a shorthand for a wellknown license, e.g. "LGPL",
    /// "GPL", "QPL", "GPL/QPL", or "other" to indicate some other license.  This
    /// string should be freed with g_free() when it's no longer needed.
    var license: String! {
        /// Returns information about the license of the image loader for the format. The
        /// returned string should be a shorthand for a wellknown license, e.g. "LGPL",
        /// "GPL", "QPL", "GPL/QPL", or "other" to indicate some other license.  This
        /// string should be freed with g_free() when it's no longer needed.
        get {
            let rv = gdk_pixbuf_format_get_license(cast(pixbuf_format_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Returns the mime types supported by the format.
    var mimeTypes: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        /// Returns the mime types supported by the format.
        get {
            let rv = gdk_pixbuf_format_get_mime_types(cast(pixbuf_format_ptr))
            return cast(rv)
        }
    }

    /// Returns the name of the format.
    var name: String! {
        /// Returns the name of the format.
        get {
            let rv = gdk_pixbuf_format_get_name(cast(pixbuf_format_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }
}



