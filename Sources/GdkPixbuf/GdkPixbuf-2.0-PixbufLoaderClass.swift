import CGLib
import CGdkPixbuf
import GLib
import GIO
import GModule
import GLibObject

// MARK: - PixbufLoaderClass Record

/// The `PixbufLoaderClassProtocol` protocol exposes the methods and properties of an underlying `GdkPixbufLoaderClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PixbufLoaderClass`.
/// Alternatively, use `PixbufLoaderClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PixbufLoaderClassProtocol {
    /// Untyped pointer to the underlying `GdkPixbufLoaderClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkPixbufLoaderClass` instance.
    var _ptr: UnsafeMutablePointer<GdkPixbufLoaderClass> { get }
}

/// The `PixbufLoaderClassRef` type acts as a lightweight Swift reference to an underlying `GdkPixbufLoaderClass` instance.
/// It exposes methods that can operate on this data type through `PixbufLoaderClassProtocol` conformance.
/// Use `PixbufLoaderClassRef` only as an `unowned` reference to an existing `GdkPixbufLoaderClass` instance.
///

public struct PixbufLoaderClassRef: PixbufLoaderClassProtocol {
    /// Untyped pointer to the underlying `GdkPixbufLoaderClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PixbufLoaderClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkPixbufLoaderClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PixbufLoaderClassProtocol`
    init<T: PixbufLoaderClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufLoaderClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufLoaderClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufLoaderClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufLoaderClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufLoaderClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PixbufLoaderClass` type acts as an owner of an underlying `GdkPixbufLoaderClass` instance.
/// It provides the methods that can operate on this data type through `PixbufLoaderClassProtocol` conformance.
/// Use `PixbufLoaderClass` as a strong reference or owner of a `GdkPixbufLoaderClass` instance.
///

open class PixbufLoaderClass: PixbufLoaderClassProtocol {
    /// Untyped pointer to the underlying `GdkPixbufLoaderClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufLoaderClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkPixbufLoaderClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkPixbufLoaderClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `PixbufLoaderClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkPixbufLoaderClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkPixbufLoaderClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `PixbufLoaderClassProtocol`
    /// `GdkPixbufLoaderClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `PixbufLoaderClassProtocol`
    public init<T: PixbufLoaderClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GdkPixbufLoaderClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GdkPixbufLoaderClass`.
    deinit {
        // no reference counting for GdkPixbufLoaderClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufLoaderClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufLoaderClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkPixbufLoaderClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufLoaderClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufLoaderClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkPixbufLoaderClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufLoaderClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufLoaderClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkPixbufLoaderClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufLoaderClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufLoaderClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkPixbufLoaderClass, cannot ref(cast(_ptr))
    }



}

// MARK: - no PixbufLoaderClass properties

// MARK: - no signals


public extension PixbufLoaderClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkPixbufLoaderClass` instance.
    var _ptr: UnsafeMutablePointer<GdkPixbufLoaderClass> { return ptr.assumingMemoryBound(to: GdkPixbufLoaderClass.self) }

}



