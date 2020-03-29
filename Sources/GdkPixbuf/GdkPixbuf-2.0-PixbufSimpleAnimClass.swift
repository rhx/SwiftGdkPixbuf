import CGLib
import CGdkPixbuf
import GLib
import GIO
import GModule
import GLibObject

// MARK: - PixbufSimpleAnimClass Record

/// The `PixbufSimpleAnimClassProtocol` protocol exposes the methods and properties of an underlying `GdkPixbufSimpleAnimClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PixbufSimpleAnimClass`.
/// Alternatively, use `PixbufSimpleAnimClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PixbufSimpleAnimClassProtocol {
    /// Untyped pointer to the underlying `GdkPixbufSimpleAnimClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkPixbufSimpleAnimClass` instance.
    var _ptr: UnsafeMutablePointer<GdkPixbufSimpleAnimClass> { get }
}

/// The `PixbufSimpleAnimClassRef` type acts as a lightweight Swift reference to an underlying `GdkPixbufSimpleAnimClass` instance.
/// It exposes methods that can operate on this data type through `PixbufSimpleAnimClassProtocol` conformance.
/// Use `PixbufSimpleAnimClassRef` only as an `unowned` reference to an existing `GdkPixbufSimpleAnimClass` instance.
///

public struct PixbufSimpleAnimClassRef: PixbufSimpleAnimClassProtocol {
    /// Untyped pointer to the underlying `GdkPixbufSimpleAnimClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PixbufSimpleAnimClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkPixbufSimpleAnimClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PixbufSimpleAnimClassProtocol`
    init<T: PixbufSimpleAnimClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PixbufSimpleAnimClass` type acts as an owner of an underlying `GdkPixbufSimpleAnimClass` instance.
/// It provides the methods that can operate on this data type through `PixbufSimpleAnimClassProtocol` conformance.
/// Use `PixbufSimpleAnimClass` as a strong reference or owner of a `GdkPixbufSimpleAnimClass` instance.
///

open class PixbufSimpleAnimClass: PixbufSimpleAnimClassProtocol {
    /// Untyped pointer to the underlying `GdkPixbufSimpleAnimClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufSimpleAnimClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkPixbufSimpleAnimClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkPixbufSimpleAnimClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `PixbufSimpleAnimClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkPixbufSimpleAnimClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkPixbufSimpleAnimClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `PixbufSimpleAnimClassProtocol`
    /// `GdkPixbufSimpleAnimClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `PixbufSimpleAnimClassProtocol`
    public init<T: PixbufSimpleAnimClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GdkPixbufSimpleAnimClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GdkPixbufSimpleAnimClass`.
    deinit {
        // no reference counting for GdkPixbufSimpleAnimClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkPixbufSimpleAnimClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkPixbufSimpleAnimClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkPixbufSimpleAnimClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkPixbufSimpleAnimClass, cannot ref(cast(_ptr))
    }



}

// MARK: - no PixbufSimpleAnimClass properties

// MARK: - no signals


public extension PixbufSimpleAnimClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkPixbufSimpleAnimClass` instance.
    var _ptr: UnsafeMutablePointer<GdkPixbufSimpleAnimClass> { return ptr.assumingMemoryBound(to: GdkPixbufSimpleAnimClass.self) }

}



