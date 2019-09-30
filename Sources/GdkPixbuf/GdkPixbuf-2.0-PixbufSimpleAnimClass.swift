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
    /// Ownership is transferred to the `PixbufSimpleAnimClass` instance.
    public init(_ op: UnsafeMutablePointer<GdkPixbufSimpleAnimClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `PixbufSimpleAnimClassProtocol`
    /// `GdkPixbufSimpleAnimClass` does not allow reference counting.
    public convenience init<T: PixbufSimpleAnimClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GdkPixbufSimpleAnimClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GdkPixbufSimpleAnimClass`.
    deinit {
        // no reference counting for GdkPixbufSimpleAnimClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GdkPixbufSimpleAnimClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GdkPixbufSimpleAnimClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GdkPixbufSimpleAnimClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GdkPixbufSimpleAnimClass>(opaquePointer))
    }



}

// MARK: - no PixbufSimpleAnimClass properties

// MARK: - no signals


public extension PixbufSimpleAnimClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkPixbufSimpleAnimClass` instance.
    var _ptr: UnsafeMutablePointer<GdkPixbufSimpleAnimClass> { return ptr.assumingMemoryBound(to: GdkPixbufSimpleAnimClass.self) }

}



