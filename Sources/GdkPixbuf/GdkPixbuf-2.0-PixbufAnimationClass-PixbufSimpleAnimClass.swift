import CGLib
import CGdkPixbuf
import GLib
import GIO
import GModule
import GLibObject

/// Metatype/GType declaration for PixbufAnimation
public extension PixbufAnimationClassRef {
    
    /// This getter returns the GLib type identifier registered for `PixbufAnimation`
    static var metatypeReference: GType { gdk_pixbuf_animation_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GdkPixbufAnimationClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GdkPixbufAnimationClass.self) }
    
    static var metatype: GdkPixbufAnimationClass? { metatypePointer?.pointee } 
    
    static var wrapper: PixbufAnimationClassRef? { PixbufAnimationClassRef(metatypePointer) }
    
    
}

// MARK: - PixbufAnimationClass Record

/// The `PixbufAnimationClassProtocol` protocol exposes the methods and properties of an underlying `GdkPixbufAnimationClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PixbufAnimationClass`.
/// Alternatively, use `PixbufAnimationClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Modules supporting animations must derive a type from
/// `GdkPixbufAnimation`, providing suitable implementations of the
/// virtual functions.
public protocol PixbufAnimationClassProtocol {
        /// Untyped pointer to the underlying `GdkPixbufAnimationClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkPixbufAnimationClass` instance.
    var _ptr: UnsafeMutablePointer<GdkPixbufAnimationClass>! { get }

    /// Required Initialiser for types conforming to `PixbufAnimationClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `PixbufAnimationClassRef` type acts as a lightweight Swift reference to an underlying `GdkPixbufAnimationClass` instance.
/// It exposes methods that can operate on this data type through `PixbufAnimationClassProtocol` conformance.
/// Use `PixbufAnimationClassRef` only as an `unowned` reference to an existing `GdkPixbufAnimationClass` instance.
///
/// Modules supporting animations must derive a type from
/// `GdkPixbufAnimation`, providing suitable implementations of the
/// virtual functions.
public struct PixbufAnimationClassRef: PixbufAnimationClassProtocol {
        /// Untyped pointer to the underlying `GdkPixbufAnimationClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PixbufAnimationClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkPixbufAnimationClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkPixbufAnimationClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkPixbufAnimationClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkPixbufAnimationClass>?) {
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

    /// Reference intialiser for a related type that implements `PixbufAnimationClassProtocol`
    @inlinable init<T: PixbufAnimationClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: PixbufAnimationClass Record: PixbufAnimationClassProtocol extension (methods and fields)
public extension PixbufAnimationClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkPixbufAnimationClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GdkPixbufAnimationClass>! { return ptr?.assumingMemoryBound(to: GdkPixbufAnimationClass.self) }


    /// the parent class
    @inlinable var parentClass: GObjectClass {
        /// the parent class
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var isStaticImage is unavailable because is_static_image is void

    // var getStaticImage is unavailable because get_static_image is void

    // var getSize is unavailable because get_size is void

    // var getIter is unavailable because get_iter is void

}



/// Metatype/GType declaration for PixbufAnimationIter
public extension PixbufAnimationIterClassRef {
    
    /// This getter returns the GLib type identifier registered for `PixbufAnimationIter`
    static var metatypeReference: GType { gdk_pixbuf_animation_iter_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GdkPixbufAnimationIterClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GdkPixbufAnimationIterClass.self) }
    
    static var metatype: GdkPixbufAnimationIterClass? { metatypePointer?.pointee } 
    
    static var wrapper: PixbufAnimationIterClassRef? { PixbufAnimationIterClassRef(metatypePointer) }
    
    
}

// MARK: - PixbufAnimationIterClass Record

/// The `PixbufAnimationIterClassProtocol` protocol exposes the methods and properties of an underlying `GdkPixbufAnimationIterClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PixbufAnimationIterClass`.
/// Alternatively, use `PixbufAnimationIterClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Modules supporting animations must derive a type from
/// `GdkPixbufAnimationIter`, providing suitable implementations of the
/// virtual functions.
public protocol PixbufAnimationIterClassProtocol {
        /// Untyped pointer to the underlying `GdkPixbufAnimationIterClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkPixbufAnimationIterClass` instance.
    var _ptr: UnsafeMutablePointer<GdkPixbufAnimationIterClass>! { get }

    /// Required Initialiser for types conforming to `PixbufAnimationIterClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `PixbufAnimationIterClassRef` type acts as a lightweight Swift reference to an underlying `GdkPixbufAnimationIterClass` instance.
/// It exposes methods that can operate on this data type through `PixbufAnimationIterClassProtocol` conformance.
/// Use `PixbufAnimationIterClassRef` only as an `unowned` reference to an existing `GdkPixbufAnimationIterClass` instance.
///
/// Modules supporting animations must derive a type from
/// `GdkPixbufAnimationIter`, providing suitable implementations of the
/// virtual functions.
public struct PixbufAnimationIterClassRef: PixbufAnimationIterClassProtocol {
        /// Untyped pointer to the underlying `GdkPixbufAnimationIterClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PixbufAnimationIterClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkPixbufAnimationIterClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkPixbufAnimationIterClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkPixbufAnimationIterClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkPixbufAnimationIterClass>?) {
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

    /// Reference intialiser for a related type that implements `PixbufAnimationIterClassProtocol`
    @inlinable init<T: PixbufAnimationIterClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationIterClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationIterClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationIterClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationIterClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationIterClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: PixbufAnimationIterClass Record: PixbufAnimationIterClassProtocol extension (methods and fields)
public extension PixbufAnimationIterClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkPixbufAnimationIterClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GdkPixbufAnimationIterClass>! { return ptr?.assumingMemoryBound(to: GdkPixbufAnimationIterClass.self) }


    /// the parent class
    @inlinable var parentClass: GObjectClass {
        /// the parent class
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var getDelayTime is unavailable because get_delay_time is void

    // var getPixbuf is unavailable because get_pixbuf is void

    // var onCurrentlyLoadingFrame is unavailable because on_currently_loading_frame is void

    // var advance is unavailable because advance is void

}



// MARK: - PixbufFormat Record

/// The `PixbufFormatProtocol` protocol exposes the methods and properties of an underlying `GdkPixbufFormat` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PixbufFormat`.
/// Alternatively, use `PixbufFormatRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GdkPixbufFormat` contains information about the image format accepted
/// by a module.
/// 
/// Only modules should access the fields directly, applications should
/// use the `gdk_pixbuf_format_*` family of functions.
public protocol PixbufFormatProtocol {
        /// Untyped pointer to the underlying `GdkPixbufFormat` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkPixbufFormat` instance.
    var pixbuf_format_ptr: UnsafeMutablePointer<GdkPixbufFormat>! { get }

    /// Required Initialiser for types conforming to `PixbufFormatProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `PixbufFormatRef` type acts as a lightweight Swift reference to an underlying `GdkPixbufFormat` instance.
/// It exposes methods that can operate on this data type through `PixbufFormatProtocol` conformance.
/// Use `PixbufFormatRef` only as an `unowned` reference to an existing `GdkPixbufFormat` instance.
///
/// A `GdkPixbufFormat` contains information about the image format accepted
/// by a module.
/// 
/// Only modules should access the fields directly, applications should
/// use the `gdk_pixbuf_format_*` family of functions.
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
/// A `GdkPixbufFormat` contains information about the image format accepted
/// by a module.
/// 
/// Only modules should access the fields directly, applications should
/// use the `gdk_pixbuf_format_*` family of functions.
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
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

    /// Creates a copy of `format`.
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

    /// Returns information about the license of the image loader for the format.
    /// 
    /// The returned string should be a shorthand for a well known license, e.g.
    /// "LGPL", "GPL", "QPL", "GPL/QPL", or "other" to indicate some other license.
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

    /// Returns `TRUE` if the save option specified by `option_key` is supported when
    /// saving a pixbuf using the module implementing `format`.
    /// 
    /// See `gdk_pixbuf_save()` for more information about option keys.
    @inlinable func isSaveOptionSupported(optionKey: UnsafePointer<gchar>!) -> Bool {
        let rv = ((gdk_pixbuf_format_is_save_option_supported(pixbuf_format_ptr, optionKey)) != 0)
        return rv
    }

    /// Disables or enables an image format.
    /// 
    /// If a format is disabled, GdkPixbuf won't use the image loader for
    /// this format to load images.
    /// 
    /// Applications can use this to avoid using image loaders with an
    /// inappropriate license, see `gdk_pixbuf_format_get_license()`.
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

    /// Returns whether this image format is disabled.
    /// 
    /// See `gdk_pixbuf_format_set_disabled()`.
    @inlinable var isDisabled: Bool {
        /// Returns whether this image format is disabled.
        /// 
        /// See `gdk_pixbuf_format_set_disabled()`.
        get {
            let rv = ((gdk_pixbuf_format_is_disabled(pixbuf_format_ptr)) != 0)
            return rv
        }
    }

    /// Returns whether this image format is scalable.
    /// 
    /// If a file is in a scalable format, it is preferable to load it at
    /// the desired size, rather than loading it at the default size and
    /// scaling the resulting pixbuf to the desired size.
    @inlinable var isScalable: Bool {
        /// Returns whether this image format is scalable.
        /// 
        /// If a file is in a scalable format, it is preferable to load it at
        /// the desired size, rather than loading it at the default size and
        /// scaling the resulting pixbuf to the desired size.
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

    /// Returns information about the license of the image loader for the format.
    /// 
    /// The returned string should be a shorthand for a well known license, e.g.
    /// "LGPL", "GPL", "QPL", "GPL/QPL", or "other" to indicate some other license.
    @inlinable var license: String! {
        /// Returns information about the license of the image loader for the format.
        /// 
        /// The returned string should be a shorthand for a well known license, e.g.
        /// "LGPL", "GPL", "QPL", "GPL/QPL", or "other" to indicate some other license.
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

    /// the name of the image format
    @inlinable var _name: UnsafeMutablePointer<gchar>! {
        /// the name of the image format
        get {
            let rv = pixbuf_format_ptr.pointee.name
            return rv
        }
        /// the name of the image format
         set {
            pixbuf_format_ptr.pointee.name = newValue
        }
    }

    /// the signature of the module
    @inlinable var signature: PixbufModulePatternRef! {
        /// the signature of the module
        get {
            let rv = PixbufModulePatternRef(gconstpointer: gconstpointer(pixbuf_format_ptr.pointee.signature))
            return rv
        }
        /// the signature of the module
         set {
            pixbuf_format_ptr.pointee.signature = UnsafeMutablePointer<GdkPixbufModulePattern>(newValue._ptr)
        }
    }

    /// the message domain for the `description`
    @inlinable var domain: UnsafeMutablePointer<gchar>! {
        /// the message domain for the `description`
        get {
            let rv = pixbuf_format_ptr.pointee.domain
            return rv
        }
        /// the message domain for the `description`
         set {
            pixbuf_format_ptr.pointee.domain = newValue
        }
    }

    /// a description of the image format
    @inlinable var _description: UnsafeMutablePointer<gchar>! {
        /// a description of the image format
        get {
            let rv = pixbuf_format_ptr.pointee.description
            return rv
        }
        /// a description of the image format
         set {
            pixbuf_format_ptr.pointee.description = newValue
        }
    }

    /// the MIME types for the image format
    @inlinable var _mimeTypes: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        /// the MIME types for the image format
        get {
            let rv = pixbuf_format_ptr.pointee.mime_types
            return rv
        }
        /// the MIME types for the image format
         set {
            pixbuf_format_ptr.pointee.mime_types = newValue
        }
    }

    /// typical filename extensions for the
    ///   image format
    @inlinable var _extensions: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        /// typical filename extensions for the
        ///   image format
        get {
            let rv = pixbuf_format_ptr.pointee.extensions
            return rv
        }
        /// typical filename extensions for the
        ///   image format
         set {
            pixbuf_format_ptr.pointee.extensions = newValue
        }
    }

    /// a combination of `GdkPixbufFormatFlags`
    @inlinable var flags: guint32 {
        /// a combination of `GdkPixbufFormatFlags`
        get {
            let rv = pixbuf_format_ptr.pointee.flags
            return rv
        }
        /// a combination of `GdkPixbufFormatFlags`
         set {
            pixbuf_format_ptr.pointee.flags = newValue
        }
    }

    /// a boolean determining whether the loader is disabled`
    @inlinable var disabled: gboolean {
        /// a boolean determining whether the loader is disabled`
        get {
            let rv = pixbuf_format_ptr.pointee.disabled
            return rv
        }
        /// a boolean determining whether the loader is disabled`
         set {
            pixbuf_format_ptr.pointee.disabled = newValue
        }
    }

    /// a string containing license information, typically set to
    ///   shorthands like "GPL", "LGPL", etc.
    @inlinable var _license: UnsafeMutablePointer<gchar>! {
        /// a string containing license information, typically set to
        ///   shorthands like "GPL", "LGPL", etc.
        get {
            let rv = pixbuf_format_ptr.pointee.license
            return rv
        }
        /// a string containing license information, typically set to
        ///   shorthands like "GPL", "LGPL", etc.
         set {
            pixbuf_format_ptr.pointee.license = newValue
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

    /// Required Initialiser for types conforming to `PixbufLoaderClassProtocol`
    init(raw: UnsafeMutableRawPointer)
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



// MARK: - PixbufModule Record

/// The `PixbufModuleProtocol` protocol exposes the methods and properties of an underlying `GdkPixbufModule` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PixbufModule`.
/// Alternatively, use `PixbufModuleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GdkPixbufModule` contains the necessary functions to load and save
/// images in a certain file format.
/// 
/// If `GdkPixbuf` has been compiled with `GModule` support, it can be extended
/// by modules which can load (and perhaps also save) new image and animation
/// formats.
/// 
/// ## Implementing modules
/// 
/// The `GdkPixbuf` interfaces needed for implementing modules are contained in
/// `gdk-pixbuf-io.h` (and `gdk-pixbuf-animation.h` if the module supports
/// animations). They are not covered by the same stability guarantees as the
/// regular GdkPixbuf API. To underline this fact, they are protected by the
/// `GDK_PIXBUF_ENABLE_BACKEND` pre-processor symbol.
/// 
/// Each loadable module must contain a `GdkPixbufModuleFillVtableFunc` function
/// named `fill_vtable`, which will get called when the module
/// is loaded and must set the function pointers of the `GdkPixbufModule`.
/// 
/// In order to make format-checking work before actually loading the modules
/// (which may require calling `dlopen` to load image libraries), modules export
/// their signatures (and other information) via the `fill_info` function. An
/// external utility, `gdk-pixbuf-query-loaders`, uses this to create a text
/// file containing a list of all available loaders and  their signatures.
/// This file is then read at runtime by `GdkPixbuf` to obtain the list of
/// available loaders and their signatures.
/// 
/// Modules may only implement a subset of the functionality available via
/// `GdkPixbufModule`. If a particular functionality is not implemented, the
/// `fill_vtable` function will simply not set the corresponding
/// function pointers of the `GdkPixbufModule` structure. If a module supports
/// incremental loading (i.e. provides `begin_load`, `stop_load` and
/// `load_increment`), it doesn't have to implement `load`, since `GdkPixbuf`
/// can supply a generic `load` implementation wrapping the incremental loading.
/// 
/// ## Installing modules
/// 
/// Installing a module is a two-step process:
/// 
///  - copy the module `file(s)` to the loader directory (normally
///    `$libdir/gdk-pixbuf-2.0/$version/loaders`, unless overridden by the
///    environment variable `GDK_PIXBUF_MODULEDIR`)
///  - call `gdk-pixbuf-query-loaders` to update the module file (normally
///    `$libdir/gdk-pixbuf-2.0/$version/loaders.cache`, unless overridden
///    by the environment variable `GDK_PIXBUF_MODULE_FILE`)
public protocol PixbufModuleProtocol {
        /// Untyped pointer to the underlying `GdkPixbufModule` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkPixbufModule` instance.
    var _ptr: UnsafeMutablePointer<GdkPixbufModule>! { get }

    /// Required Initialiser for types conforming to `PixbufModuleProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `PixbufModuleRef` type acts as a lightweight Swift reference to an underlying `GdkPixbufModule` instance.
/// It exposes methods that can operate on this data type through `PixbufModuleProtocol` conformance.
/// Use `PixbufModuleRef` only as an `unowned` reference to an existing `GdkPixbufModule` instance.
///
/// A `GdkPixbufModule` contains the necessary functions to load and save
/// images in a certain file format.
/// 
/// If `GdkPixbuf` has been compiled with `GModule` support, it can be extended
/// by modules which can load (and perhaps also save) new image and animation
/// formats.
/// 
/// ## Implementing modules
/// 
/// The `GdkPixbuf` interfaces needed for implementing modules are contained in
/// `gdk-pixbuf-io.h` (and `gdk-pixbuf-animation.h` if the module supports
/// animations). They are not covered by the same stability guarantees as the
/// regular GdkPixbuf API. To underline this fact, they are protected by the
/// `GDK_PIXBUF_ENABLE_BACKEND` pre-processor symbol.
/// 
/// Each loadable module must contain a `GdkPixbufModuleFillVtableFunc` function
/// named `fill_vtable`, which will get called when the module
/// is loaded and must set the function pointers of the `GdkPixbufModule`.
/// 
/// In order to make format-checking work before actually loading the modules
/// (which may require calling `dlopen` to load image libraries), modules export
/// their signatures (and other information) via the `fill_info` function. An
/// external utility, `gdk-pixbuf-query-loaders`, uses this to create a text
/// file containing a list of all available loaders and  their signatures.
/// This file is then read at runtime by `GdkPixbuf` to obtain the list of
/// available loaders and their signatures.
/// 
/// Modules may only implement a subset of the functionality available via
/// `GdkPixbufModule`. If a particular functionality is not implemented, the
/// `fill_vtable` function will simply not set the corresponding
/// function pointers of the `GdkPixbufModule` structure. If a module supports
/// incremental loading (i.e. provides `begin_load`, `stop_load` and
/// `load_increment`), it doesn't have to implement `load`, since `GdkPixbuf`
/// can supply a generic `load` implementation wrapping the incremental loading.
/// 
/// ## Installing modules
/// 
/// Installing a module is a two-step process:
/// 
///  - copy the module `file(s)` to the loader directory (normally
///    `$libdir/gdk-pixbuf-2.0/$version/loaders`, unless overridden by the
///    environment variable `GDK_PIXBUF_MODULEDIR`)
///  - call `gdk-pixbuf-query-loaders` to update the module file (normally
///    `$libdir/gdk-pixbuf-2.0/$version/loaders.cache`, unless overridden
///    by the environment variable `GDK_PIXBUF_MODULE_FILE`)
public struct PixbufModuleRef: PixbufModuleProtocol {
        /// Untyped pointer to the underlying `GdkPixbufModule` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PixbufModuleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkPixbufModule>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkPixbufModule>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkPixbufModule>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkPixbufModule>?) {
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

    /// Reference intialiser for a related type that implements `PixbufModuleProtocol`
    @inlinable init<T: PixbufModuleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufModuleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufModuleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufModuleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufModuleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufModuleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PixbufModule` type acts as an owner of an underlying `GdkPixbufModule` instance.
/// It provides the methods that can operate on this data type through `PixbufModuleProtocol` conformance.
/// Use `PixbufModule` as a strong reference or owner of a `GdkPixbufModule` instance.
///
/// A `GdkPixbufModule` contains the necessary functions to load and save
/// images in a certain file format.
/// 
/// If `GdkPixbuf` has been compiled with `GModule` support, it can be extended
/// by modules which can load (and perhaps also save) new image and animation
/// formats.
/// 
/// ## Implementing modules
/// 
/// The `GdkPixbuf` interfaces needed for implementing modules are contained in
/// `gdk-pixbuf-io.h` (and `gdk-pixbuf-animation.h` if the module supports
/// animations). They are not covered by the same stability guarantees as the
/// regular GdkPixbuf API. To underline this fact, they are protected by the
/// `GDK_PIXBUF_ENABLE_BACKEND` pre-processor symbol.
/// 
/// Each loadable module must contain a `GdkPixbufModuleFillVtableFunc` function
/// named `fill_vtable`, which will get called when the module
/// is loaded and must set the function pointers of the `GdkPixbufModule`.
/// 
/// In order to make format-checking work before actually loading the modules
/// (which may require calling `dlopen` to load image libraries), modules export
/// their signatures (and other information) via the `fill_info` function. An
/// external utility, `gdk-pixbuf-query-loaders`, uses this to create a text
/// file containing a list of all available loaders and  their signatures.
/// This file is then read at runtime by `GdkPixbuf` to obtain the list of
/// available loaders and their signatures.
/// 
/// Modules may only implement a subset of the functionality available via
/// `GdkPixbufModule`. If a particular functionality is not implemented, the
/// `fill_vtable` function will simply not set the corresponding
/// function pointers of the `GdkPixbufModule` structure. If a module supports
/// incremental loading (i.e. provides `begin_load`, `stop_load` and
/// `load_increment`), it doesn't have to implement `load`, since `GdkPixbuf`
/// can supply a generic `load` implementation wrapping the incremental loading.
/// 
/// ## Installing modules
/// 
/// Installing a module is a two-step process:
/// 
///  - copy the module `file(s)` to the loader directory (normally
///    `$libdir/gdk-pixbuf-2.0/$version/loaders`, unless overridden by the
///    environment variable `GDK_PIXBUF_MODULEDIR`)
///  - call `gdk-pixbuf-query-loaders` to update the module file (normally
///    `$libdir/gdk-pixbuf-2.0/$version/loaders.cache`, unless overridden
///    by the environment variable `GDK_PIXBUF_MODULE_FILE`)
open class PixbufModule: PixbufModuleProtocol {
        /// Untyped pointer to the underlying `GdkPixbufModule` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufModule` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkPixbufModule>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufModule` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkPixbufModule>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufModule` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufModule` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufModule` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkPixbufModule>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufModule` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkPixbufModule>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkPixbufModule` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `PixbufModule` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkPixbufModule>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkPixbufModule, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `PixbufModuleProtocol`
    /// `GdkPixbufModule` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `PixbufModuleProtocol`
    @inlinable public init<T: PixbufModuleProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GdkPixbufModule, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GdkPixbufModule`.
    deinit {
        // no reference counting for GdkPixbufModule, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufModuleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufModuleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkPixbufModule, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufModuleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufModuleProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkPixbufModule, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufModuleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufModuleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkPixbufModule, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufModuleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufModuleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkPixbufModule, cannot ref(_ptr)
    }



}

// MARK: no PixbufModule properties

// MARK: no PixbufModule signals

// MARK: PixbufModule has no signals
// MARK: PixbufModule Record: PixbufModuleProtocol extension (methods and fields)
public extension PixbufModuleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkPixbufModule` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GdkPixbufModule>! { return ptr?.assumingMemoryBound(to: GdkPixbufModule.self) }


    /// the name of the module, usually the same as the
    ///  usual file extension for images of this type, eg. "xpm", "jpeg" or "png".
    @inlinable var moduleName: UnsafeMutablePointer<CChar>! {
        /// the name of the module, usually the same as the
        ///  usual file extension for images of this type, eg. "xpm", "jpeg" or "png".
        get {
            let rv = _ptr.pointee.module_name
            return rv
        }
        /// the name of the module, usually the same as the
        ///  usual file extension for images of this type, eg. "xpm", "jpeg" or "png".
         set {
            _ptr.pointee.module_name = newValue
        }
    }

    /// the path from which the module is loaded.
    @inlinable var modulePath: UnsafeMutablePointer<CChar>! {
        /// the path from which the module is loaded.
        get {
            let rv = _ptr.pointee.module_path
            return rv
        }
        /// the path from which the module is loaded.
         set {
            _ptr.pointee.module_path = newValue
        }
    }

    /// the loaded `GModule`.
    @inlinable var module: ModuleRef! {
        /// the loaded `GModule`.
        get {
            let rv = ModuleRef(gconstpointer: gconstpointer(_ptr.pointee.module))
            return rv
        }
        /// the loaded `GModule`.
         set {
            _ptr.pointee.module = UnsafeMutablePointer<GModule>(newValue._ptr)
        }
    }

    /// a `GdkPixbufFormat` holding information about the module.
    @inlinable var info: PixbufFormatRef! {
        /// a `GdkPixbufFormat` holding information about the module.
        get {
            let rv = PixbufFormatRef(gconstpointer: gconstpointer(_ptr.pointee.info))
            return rv
        }
        /// a `GdkPixbufFormat` holding information about the module.
         set {
            _ptr.pointee.info = UnsafeMutablePointer<GdkPixbufFormat>(newValue.pixbuf_format_ptr)
        }
    }

    // var load is unavailable because load is void

    // var loadXpmData is unavailable because load_xpm_data is void

    // var beginLoad is unavailable because begin_load is void

    // var stopLoad is unavailable because stop_load is void

    // var loadIncrement is unavailable because load_increment is void

    // var loadAnimation is unavailable because load_animation is void

    // var save is unavailable because save is void

    // var saveToCallback is unavailable because save_to_callback is void

    // var isSaveOptionSupported is unavailable because is_save_option_supported is void

    // var Reserved1 is unavailable because _reserved1 is void

    // var Reserved2 is unavailable because _reserved2 is void

    // var Reserved3 is unavailable because _reserved3 is void

    // var Reserved4 is unavailable because _reserved4 is void

}



// MARK: - PixbufModulePattern Record

/// The `PixbufModulePatternProtocol` protocol exposes the methods and properties of an underlying `GdkPixbufModulePattern` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PixbufModulePattern`.
/// Alternatively, use `PixbufModulePatternRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The signature prefix for a module.
/// 
/// The signature of a module is a set of prefixes. Prefixes are encoded as
/// pairs of ordinary strings, where the second string, called the mask, if
/// not `NULL`, must be of the same length as the first one and may contain
/// ' ', '!', 'x', 'z', and 'n' to indicate bytes that must be matched,
/// not matched, "don't-care"-bytes, zeros and non-zeros, respectively.
/// 
/// Each prefix has an associated integer that describes the relevance of
/// the prefix, with 0 meaning a mismatch and 100 a "perfect match".
/// 
/// Starting with gdk-pixbuf 2.8, the first byte of the mask may be '*',
/// indicating an unanchored pattern that matches not only at the beginning,
/// but also in the middle. Versions prior to 2.8 will interpret the '*'
/// like an 'x'.
/// 
/// The signature of a module is stored as an array of
/// `GdkPixbufModulePatterns`. The array is terminated by a pattern
/// where the `prefix` is `NULL`.
/// 
/// ```c
/// GdkPixbufModulePattern *signature[] = {
///   { "abcdx", " !x z", 100 },
///   { "bla", NULL,  90 },
///   { NULL, NULL, 0 }
/// };
/// ```
/// 
/// In the example above, the signature matches e.g. "auud\0" with
/// relevance 100, and "blau" with relevance 90.
public protocol PixbufModulePatternProtocol {
        /// Untyped pointer to the underlying `GdkPixbufModulePattern` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkPixbufModulePattern` instance.
    var _ptr: UnsafeMutablePointer<GdkPixbufModulePattern>! { get }

    /// Required Initialiser for types conforming to `PixbufModulePatternProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `PixbufModulePatternRef` type acts as a lightweight Swift reference to an underlying `GdkPixbufModulePattern` instance.
/// It exposes methods that can operate on this data type through `PixbufModulePatternProtocol` conformance.
/// Use `PixbufModulePatternRef` only as an `unowned` reference to an existing `GdkPixbufModulePattern` instance.
///
/// The signature prefix for a module.
/// 
/// The signature of a module is a set of prefixes. Prefixes are encoded as
/// pairs of ordinary strings, where the second string, called the mask, if
/// not `NULL`, must be of the same length as the first one and may contain
/// ' ', '!', 'x', 'z', and 'n' to indicate bytes that must be matched,
/// not matched, "don't-care"-bytes, zeros and non-zeros, respectively.
/// 
/// Each prefix has an associated integer that describes the relevance of
/// the prefix, with 0 meaning a mismatch and 100 a "perfect match".
/// 
/// Starting with gdk-pixbuf 2.8, the first byte of the mask may be '*',
/// indicating an unanchored pattern that matches not only at the beginning,
/// but also in the middle. Versions prior to 2.8 will interpret the '*'
/// like an 'x'.
/// 
/// The signature of a module is stored as an array of
/// `GdkPixbufModulePatterns`. The array is terminated by a pattern
/// where the `prefix` is `NULL`.
/// 
/// ```c
/// GdkPixbufModulePattern *signature[] = {
///   { "abcdx", " !x z", 100 },
///   { "bla", NULL,  90 },
///   { NULL, NULL, 0 }
/// };
/// ```
/// 
/// In the example above, the signature matches e.g. "auud\0" with
/// relevance 100, and "blau" with relevance 90.
public struct PixbufModulePatternRef: PixbufModulePatternProtocol {
        /// Untyped pointer to the underlying `GdkPixbufModulePattern` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PixbufModulePatternRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkPixbufModulePattern>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkPixbufModulePattern>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkPixbufModulePattern>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkPixbufModulePattern>?) {
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

    /// Reference intialiser for a related type that implements `PixbufModulePatternProtocol`
    @inlinable init<T: PixbufModulePatternProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufModulePatternProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufModulePatternProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufModulePatternProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufModulePatternProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufModulePatternProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PixbufModulePattern` type acts as an owner of an underlying `GdkPixbufModulePattern` instance.
/// It provides the methods that can operate on this data type through `PixbufModulePatternProtocol` conformance.
/// Use `PixbufModulePattern` as a strong reference or owner of a `GdkPixbufModulePattern` instance.
///
/// The signature prefix for a module.
/// 
/// The signature of a module is a set of prefixes. Prefixes are encoded as
/// pairs of ordinary strings, where the second string, called the mask, if
/// not `NULL`, must be of the same length as the first one and may contain
/// ' ', '!', 'x', 'z', and 'n' to indicate bytes that must be matched,
/// not matched, "don't-care"-bytes, zeros and non-zeros, respectively.
/// 
/// Each prefix has an associated integer that describes the relevance of
/// the prefix, with 0 meaning a mismatch and 100 a "perfect match".
/// 
/// Starting with gdk-pixbuf 2.8, the first byte of the mask may be '*',
/// indicating an unanchored pattern that matches not only at the beginning,
/// but also in the middle. Versions prior to 2.8 will interpret the '*'
/// like an 'x'.
/// 
/// The signature of a module is stored as an array of
/// `GdkPixbufModulePatterns`. The array is terminated by a pattern
/// where the `prefix` is `NULL`.
/// 
/// ```c
/// GdkPixbufModulePattern *signature[] = {
///   { "abcdx", " !x z", 100 },
///   { "bla", NULL,  90 },
///   { NULL, NULL, 0 }
/// };
/// ```
/// 
/// In the example above, the signature matches e.g. "auud\0" with
/// relevance 100, and "blau" with relevance 90.
open class PixbufModulePattern: PixbufModulePatternProtocol {
        /// Untyped pointer to the underlying `GdkPixbufModulePattern` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufModulePattern` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkPixbufModulePattern>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufModulePattern` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkPixbufModulePattern>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufModulePattern` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufModulePattern` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufModulePattern` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkPixbufModulePattern>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufModulePattern` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkPixbufModulePattern>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkPixbufModulePattern` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `PixbufModulePattern` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkPixbufModulePattern>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkPixbufModulePattern, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `PixbufModulePatternProtocol`
    /// `GdkPixbufModulePattern` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `PixbufModulePatternProtocol`
    @inlinable public init<T: PixbufModulePatternProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GdkPixbufModulePattern, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GdkPixbufModulePattern`.
    deinit {
        // no reference counting for GdkPixbufModulePattern, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufModulePatternProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufModulePatternProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkPixbufModulePattern, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufModulePatternProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufModulePatternProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkPixbufModulePattern, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufModulePatternProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufModulePatternProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkPixbufModulePattern, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufModulePatternProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufModulePatternProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkPixbufModulePattern, cannot ref(_ptr)
    }



}

// MARK: no PixbufModulePattern properties

// MARK: no PixbufModulePattern signals

// MARK: PixbufModulePattern has no signals
// MARK: PixbufModulePattern Record: PixbufModulePatternProtocol extension (methods and fields)
public extension PixbufModulePatternProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkPixbufModulePattern` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GdkPixbufModulePattern>! { return ptr?.assumingMemoryBound(to: GdkPixbufModulePattern.self) }


    /// the prefix for this pattern
    @inlinable var `prefix`: UnsafeMutablePointer<CChar>! {
        /// the prefix for this pattern
        get {
            let rv = _ptr.pointee.prefix
            return rv
        }
        /// the prefix for this pattern
         set {
            _ptr.pointee.prefix = newValue
        }
    }

    /// mask containing bytes which modify how the prefix is matched against
    ///  test data
    @inlinable var mask: UnsafeMutablePointer<CChar>! {
        /// mask containing bytes which modify how the prefix is matched against
        ///  test data
        get {
            let rv = _ptr.pointee.mask
            return rv
        }
        /// mask containing bytes which modify how the prefix is matched against
        ///  test data
         set {
            _ptr.pointee.mask = newValue
        }
    }

    /// relevance of this pattern
    @inlinable var relevance: gint {
        /// relevance of this pattern
        get {
            let rv = _ptr.pointee.relevance
            return rv
        }
        /// relevance of this pattern
         set {
            _ptr.pointee.relevance = newValue
        }
    }

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

    /// Required Initialiser for types conforming to `PixbufSimpleAnimClassProtocol`
    init(raw: UnsafeMutableRawPointer)
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



