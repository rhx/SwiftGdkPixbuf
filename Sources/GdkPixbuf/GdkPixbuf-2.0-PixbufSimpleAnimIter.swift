import CGLib
import CGdkPixbuf
import GLib
import GIO
import GModule
import GLibObject

// MARK: - PixbufSimpleAnimIter Class

/// The `PixbufSimpleAnimIterProtocol` protocol exposes the methods and properties of an underlying `GdkPixbufSimpleAnimIter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PixbufSimpleAnimIter`.
/// Alternatively, use `PixbufSimpleAnimIterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol PixbufSimpleAnimIterProtocol: PixbufAnimationIterProtocol {
    /// Untyped pointer to the underlying `GdkPixbufSimpleAnimIter` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkPixbufSimpleAnimIter` instance.
    var pixbuf_simple_anim_iter_ptr: UnsafeMutablePointer<GdkPixbufSimpleAnimIter> { get }
}

/// The `PixbufSimpleAnimIterRef` type acts as a lightweight Swift reference to an underlying `GdkPixbufSimpleAnimIter` instance.
/// It exposes methods that can operate on this data type through `PixbufSimpleAnimIterProtocol` conformance.
/// Use `PixbufSimpleAnimIterRef` only as an `unowned` reference to an existing `GdkPixbufSimpleAnimIter` instance.
///

public struct PixbufSimpleAnimIterRef: PixbufSimpleAnimIterProtocol {
    /// Untyped pointer to the underlying `GdkPixbufSimpleAnimIter` instance.
    /// For type-safe access, use the generated, typed pointer `pixbuf_simple_anim_iter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PixbufSimpleAnimIterRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkPixbufSimpleAnimIter>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PixbufSimpleAnimIterProtocol`
    init<T: PixbufSimpleAnimIterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimIterProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimIterProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimIterProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimIterProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimIterProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PixbufSimpleAnimIter` type acts as a reference-counted owner of an underlying `GdkPixbufSimpleAnimIter` instance.
/// It provides the methods that can operate on this data type through `PixbufSimpleAnimIterProtocol` conformance.
/// Use `PixbufSimpleAnimIter` as a strong reference or owner of a `GdkPixbufSimpleAnimIter` instance.
///

open class PixbufSimpleAnimIter: PixbufAnimationIter, PixbufSimpleAnimIterProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufSimpleAnimIter` instance.
    /// - Parameter op: pointer to the underlying object
    override public init(_ op: UnsafeMutablePointer<GdkPixbufSimpleAnimIter>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain ``.
    /// i.e., ownership is transferred to the `PixbufSimpleAnimIter` instance.
    /// - Parameter op: pointer to the underlying object
    override public init(retaining op: UnsafeMutablePointer<GdkPixbufSimpleAnimIter>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `PixbufSimpleAnimIterProtocol`
    /// Will retain ``.
    /// - Parameter other: an instance of a related type that implements `PixbufSimpleAnimIterProtocol`
    public init<T: PixbufSimpleAnimIterProtocol>(pixbufSimpleAnimIter other: T) {
        super.init(retaining: cast(other.pixbuf_simple_anim_iter_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimIterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimIterProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimIterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimIterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: - no PixbufSimpleAnimIter properties

public enum PixbufSimpleAnimIterSignalName: String, SignalNameProtocol {
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

}

public extension PixbufSimpleAnimIterProtocol {
    /// Connect a `PixbufSimpleAnimIterSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: PixbufSimpleAnimIterSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(pixbuf_simple_anim_iter_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension PixbufSimpleAnimIterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkPixbufSimpleAnimIter` instance.
    var pixbuf_simple_anim_iter_ptr: UnsafeMutablePointer<GdkPixbufSimpleAnimIter> { return ptr.assumingMemoryBound(to: GdkPixbufSimpleAnimIter.self) }

}



