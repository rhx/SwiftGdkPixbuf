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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkPixbufFormat` instance.
    var pixbuf_format_ptr: UnsafeMutablePointer<GdkPixbufFormat>! { get }

}

/// The `PixbufFormatRef` type acts as a lightweight Swift reference to an underlying `GdkPixbufFormat` instance.
/// It exposes methods that can operate on this data type through `PixbufFormatProtocol` conformance.
/// Use `PixbufFormatRef` only as an `unowned` reference to an existing `GdkPixbufFormat` instance.
///

public struct PixbufFormatRef: PixbufFormatProtocol {
        /// Untyped pointer to the underlying `GdkPixbufFormat` instance.
    /// For type-safe access, use the generated, typed pointer `pixbuf_format_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PixbufFormatRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkPixbufFormat>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkPixbufFormat>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkPixbufFormat>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkPixbufFormat>?) {
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

    /// Reference intialiser for a related type that implements `PixbufFormatProtocol`
    @inlinable init<T: PixbufFormatProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufFormatProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufFormatProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufFormatProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufFormatProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufFormatProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufFormat` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkPixbufFormat>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufFormat` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkPixbufFormat>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufFormat` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufFormat` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufFormat` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkPixbufFormat>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufFormat` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkPixbufFormat>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkPixbufFormat` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `PixbufFormat` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkPixbufFormat>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkPixbufFormat, cannot ref(pixbuf_format_ptr)
    }

    /// Reference intialiser for a related type that implements `PixbufFormatProtocol`
    /// `GdkPixbufFormat` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `PixbufFormatProtocol`
    @inlinable public init<T: PixbufFormatProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GdkPixbufFormat, cannot ref(pixbuf_format_ptr)
    }

    /// Do-nothing destructor for `GdkPixbufFormat`.
    deinit {
        // no reference counting for GdkPixbufFormat, cannot unref(pixbuf_format_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufFormatProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufFormatProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkPixbufFormat, cannot ref(pixbuf_format_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufFormatProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufFormatProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkPixbufFormat, cannot ref(pixbuf_format_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufFormatProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufFormatProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkPixbufFormat, cannot ref(pixbuf_format_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufFormatProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufFormatProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkPixbufFormat, cannot ref(pixbuf_format_ptr)
    }



}

// MARK: no PixbufFormat properties

// MARK: no PixbufFormat signals

// MARK: PixbufFormat has no signals
// MARK: PixbufFormat Record: PixbufFormatProtocol extension (methods and fields)
public extension PixbufFormatProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkPixbufFormat` instance.
    @inlinable var pixbuf_format_ptr: UnsafeMutablePointer<GdkPixbufFormat>! { return ptr?.assumingMemoryBound(to: GdkPixbufFormat.self) }

    /// Creates a copy of `format`
    @inlinable func copy() -> PixbufFormatRef! {
        guard let rv = PixbufFormatRef(gconstpointer: gconstpointer(gdk_pixbuf_format_copy(pixbuf_format_ptr))) else { return nil }
        return rv
    }

    /// Frees the resources allocated when copying a `GdkPixbufFormat`
    /// using `gdk_pixbuf_format_copy()`
    @inlinable func free() {
        gdk_pixbuf_format_free(pixbuf_format_ptr)
    
    }

    /// Returns a description of the format.
    @inlinable func getDescription() -> String! {
        let rv = gdk_pixbuf_format_get_description(pixbuf_format_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the filename extensions typically used for files in the
    /// given format.
    @inlinable func getExtensions() -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        let rv = gdk_pixbuf_format_get_extensions(pixbuf_format_ptr)
        return rv
    }

    /// Returns information about the license of the image loader for the format. The
    /// returned string should be a shorthand for a wellknown license, e.g. "LGPL",
    /// "GPL", "QPL", "GPL/QPL", or "other" to indicate some other license.  This
    /// string should be freed with `g_free()` when it's no longer needed.
    @inlinable func getLicense() -> String! {
        let rv = gdk_pixbuf_format_get_license(pixbuf_format_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the mime types supported by the format.
    @inlinable func getMimeTypes() -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        let rv = gdk_pixbuf_format_get_mime_types(pixbuf_format_ptr)
        return rv
    }

    /// Returns the name of the format.
    @inlinable func getName() -> String! {
        let rv = gdk_pixbuf_format_get_name(pixbuf_format_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns `true` if the save option specified by `option_key` is supported when
    /// saving a pixbuf using the module implementing `format`.
    /// See `gdk_pixbuf_save()` for more information about option keys.
    @inlinable func isSaveOptionSupported(optionKey: UnsafePointer<gchar>!) -> Bool {
        let rv = ((gdk_pixbuf_format_is_save_option_supported(pixbuf_format_ptr, optionKey)) != 0)
        return rv
    }

    /// Disables or enables an image format. If a format is disabled,
    /// gdk-pixbuf won't use the image loader for this format to load
    /// images. Applications can use this to avoid using image loaders
    /// with an inappropriate license, see `gdk_pixbuf_format_get_license()`.
    @inlinable func set(disabled: Bool) {
        gdk_pixbuf_format_set_disabled(pixbuf_format_ptr, gboolean((disabled) ? 1 : 0))
    
    }
    /// Returns a description of the format.
    @inlinable var description: String! {
        /// Returns a description of the format.
        get {
            let rv = gdk_pixbuf_format_get_description(pixbuf_format_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Returns the filename extensions typically used for files in the
    /// given format.
    @inlinable var extensions: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        /// Returns the filename extensions typically used for files in the
        /// given format.
        get {
            let rv = gdk_pixbuf_format_get_extensions(pixbuf_format_ptr)
            return rv
        }
    }

    /// Returns whether this image format is disabled. See
    /// `gdk_pixbuf_format_set_disabled()`.
    @inlinable var isDisabled: Bool {
        /// Returns whether this image format is disabled. See
        /// `gdk_pixbuf_format_set_disabled()`.
        get {
            let rv = ((gdk_pixbuf_format_is_disabled(pixbuf_format_ptr)) != 0)
            return rv
        }
    }

    /// Returns whether this image format is scalable. If a file is in a
    /// scalable format, it is preferable to load it at the desired size,
    /// rather than loading it at the default size and scaling the
    /// resulting pixbuf to the desired size.
    @inlinable var isScalable: Bool {
        /// Returns whether this image format is scalable. If a file is in a
        /// scalable format, it is preferable to load it at the desired size,
        /// rather than loading it at the default size and scaling the
        /// resulting pixbuf to the desired size.
        get {
            let rv = ((gdk_pixbuf_format_is_scalable(pixbuf_format_ptr)) != 0)
            return rv
        }
    }

    /// Returns whether pixbufs can be saved in the given format.
    @inlinable var isWritable: Bool {
        /// Returns whether pixbufs can be saved in the given format.
        get {
            let rv = ((gdk_pixbuf_format_is_writable(pixbuf_format_ptr)) != 0)
            return rv
        }
    }

    /// Returns information about the license of the image loader for the format. The
    /// returned string should be a shorthand for a wellknown license, e.g. "LGPL",
    /// "GPL", "QPL", "GPL/QPL", or "other" to indicate some other license.  This
    /// string should be freed with `g_free()` when it's no longer needed.
    @inlinable var license: String! {
        /// Returns information about the license of the image loader for the format. The
        /// returned string should be a shorthand for a wellknown license, e.g. "LGPL",
        /// "GPL", "QPL", "GPL/QPL", or "other" to indicate some other license.  This
        /// string should be freed with `g_free()` when it's no longer needed.
        get {
            let rv = gdk_pixbuf_format_get_license(pixbuf_format_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Returns the mime types supported by the format.
    @inlinable var mimeTypes: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        /// Returns the mime types supported by the format.
        get {
            let rv = gdk_pixbuf_format_get_mime_types(pixbuf_format_ptr)
            return rv
        }
    }

    /// Returns the name of the format.
    @inlinable var name: String! {
        /// Returns the name of the format.
        get {
            let rv = gdk_pixbuf_format_get_name(pixbuf_format_ptr).map({ String(cString: $0) })
            return rv
        }
    }


}



/// Metatype/GType declaration for PixbufLoader
public extension PixbufLoaderClassRef {
    
    /// This getter returns the GLib type identifier registered for `PixbufLoader`
    static var metatypeReference: GType { gdk_pixbuf_loader_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GdkPixbufLoaderClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GdkPixbufLoaderClass.self) }
    
    static var metatype: GdkPixbufLoaderClass? { metatypePointer?.pointee } 
    
    static var wrapper: PixbufLoaderClassRef? { PixbufLoaderClassRef(metatypePointer) }
    
    
}

// MARK: - PixbufLoaderClass Record

/// The `PixbufLoaderClassProtocol` protocol exposes the methods and properties of an underlying `GdkPixbufLoaderClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PixbufLoaderClass`.
/// Alternatively, use `PixbufLoaderClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PixbufLoaderClassProtocol {
        /// Untyped pointer to the underlying `GdkPixbufLoaderClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkPixbufLoaderClass` instance.
    var _ptr: UnsafeMutablePointer<GdkPixbufLoaderClass>! { get }

}

/// The `PixbufLoaderClassRef` type acts as a lightweight Swift reference to an underlying `GdkPixbufLoaderClass` instance.
/// It exposes methods that can operate on this data type through `PixbufLoaderClassProtocol` conformance.
/// Use `PixbufLoaderClassRef` only as an `unowned` reference to an existing `GdkPixbufLoaderClass` instance.
///

public struct PixbufLoaderClassRef: PixbufLoaderClassProtocol {
        /// Untyped pointer to the underlying `GdkPixbufLoaderClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PixbufLoaderClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkPixbufLoaderClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkPixbufLoaderClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkPixbufLoaderClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkPixbufLoaderClass>?) {
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

    /// Reference intialiser for a related type that implements `PixbufLoaderClassProtocol`
    @inlinable init<T: PixbufLoaderClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufLoaderClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufLoaderClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufLoaderClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufLoaderClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufLoaderClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: PixbufLoaderClass Record: PixbufLoaderClassProtocol extension (methods and fields)
public extension PixbufLoaderClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkPixbufLoaderClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GdkPixbufLoaderClass>! { return ptr?.assumingMemoryBound(to: GdkPixbufLoaderClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var sizePrepared is unavailable because size_prepared is void

    // var areaPrepared is unavailable because area_prepared is void

    // var areaUpdated is unavailable because area_updated is void

    // var closed is unavailable because closed is void

}



/// Metatype/GType declaration for PixbufSimpleAnim
public extension PixbufSimpleAnimClassRef {
    
    /// This getter returns the GLib type identifier registered for `PixbufSimpleAnim`
    static var metatypeReference: GType { gdk_pixbuf_simple_anim_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GdkPixbufSimpleAnimClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GdkPixbufSimpleAnimClass.self) }
    
    static var metatype: GdkPixbufSimpleAnimClass? { metatypePointer?.pointee } 
    
    static var wrapper: PixbufSimpleAnimClassRef? { PixbufSimpleAnimClassRef(metatypePointer) }
    
    
}

// MARK: - PixbufSimpleAnimClass Record

/// The `PixbufSimpleAnimClassProtocol` protocol exposes the methods and properties of an underlying `GdkPixbufSimpleAnimClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PixbufSimpleAnimClass`.
/// Alternatively, use `PixbufSimpleAnimClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PixbufSimpleAnimClassProtocol {
        /// Untyped pointer to the underlying `GdkPixbufSimpleAnimClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkPixbufSimpleAnimClass` instance.
    var _ptr: UnsafeMutablePointer<GdkPixbufSimpleAnimClass>! { get }

}

/// The `PixbufSimpleAnimClassRef` type acts as a lightweight Swift reference to an underlying `GdkPixbufSimpleAnimClass` instance.
/// It exposes methods that can operate on this data type through `PixbufSimpleAnimClassProtocol` conformance.
/// Use `PixbufSimpleAnimClassRef` only as an `unowned` reference to an existing `GdkPixbufSimpleAnimClass` instance.
///

public struct PixbufSimpleAnimClassRef: PixbufSimpleAnimClassProtocol {
        /// Untyped pointer to the underlying `GdkPixbufSimpleAnimClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PixbufSimpleAnimClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkPixbufSimpleAnimClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkPixbufSimpleAnimClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkPixbufSimpleAnimClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkPixbufSimpleAnimClass>?) {
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

    /// Reference intialiser for a related type that implements `PixbufSimpleAnimClassProtocol`
    @inlinable init<T: PixbufSimpleAnimClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: PixbufSimpleAnimClass Record: PixbufSimpleAnimClassProtocol extension (methods and fields)
public extension PixbufSimpleAnimClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkPixbufSimpleAnimClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GdkPixbufSimpleAnimClass>! { return ptr?.assumingMemoryBound(to: GdkPixbufSimpleAnimClass.self) }



}



