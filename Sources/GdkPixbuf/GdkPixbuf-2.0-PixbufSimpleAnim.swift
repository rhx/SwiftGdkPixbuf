import CGLib
import CGdkPixbuf
import GLib
import GIO
import GModule
import GLibObject

// MARK: - PixbufSimpleAnim Class

/// The `PixbufSimpleAnimProtocol` protocol exposes the methods and properties of an underlying `GdkPixbufSimpleAnim` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PixbufSimpleAnim`.
/// Alternatively, use `PixbufSimpleAnimRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// An opaque struct representing a simple animation.
public protocol PixbufSimpleAnimProtocol: PixbufAnimationProtocol {
    /// Untyped pointer to the underlying `GdkPixbufSimpleAnim` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkPixbufSimpleAnim` instance.
    var pixbuf_simple_anim_ptr: UnsafeMutablePointer<GdkPixbufSimpleAnim> { get }
}

/// The `PixbufSimpleAnimRef` type acts as a lightweight Swift reference to an underlying `GdkPixbufSimpleAnim` instance.
/// It exposes methods that can operate on this data type through `PixbufSimpleAnimProtocol` conformance.
/// Use `PixbufSimpleAnimRef` only as an `unowned` reference to an existing `GdkPixbufSimpleAnim` instance.
///
/// An opaque struct representing a simple animation.
public struct PixbufSimpleAnimRef: PixbufSimpleAnimProtocol {
    /// Untyped pointer to the underlying `GdkPixbufSimpleAnim` instance.
    /// For type-safe access, use the generated, typed pointer `pixbuf_simple_anim_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PixbufSimpleAnimRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkPixbufSimpleAnim>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PixbufSimpleAnimProtocol`
    init<T: PixbufSimpleAnimProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new, empty animation.
    init( width: CInt, height: CInt, rate: gfloat) {
        let rv = gdk_pixbuf_simple_anim_new(gint(width), gint(height), rate)
        self.init(cast(rv))
    }
}

/// The `PixbufSimpleAnim` type acts as a reference-counted owner of an underlying `GdkPixbufSimpleAnim` instance.
/// It provides the methods that can operate on this data type through `PixbufSimpleAnimProtocol` conformance.
/// Use `PixbufSimpleAnim` as a strong reference or owner of a `GdkPixbufSimpleAnim` instance.
///
/// An opaque struct representing a simple animation.
open class PixbufSimpleAnim: PixbufAnimation, PixbufSimpleAnimProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `PixbufSimpleAnim` instance.
    public init(_ op: UnsafeMutablePointer<GdkPixbufSimpleAnim>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `PixbufSimpleAnimProtocol`
    /// Will retain `GdkPixbufSimpleAnim`.
    public convenience init<T: PixbufSimpleAnimProtocol>(_ other: T) {
        self.init(cast(other.pixbuf_simple_anim_ptr))
        g_object_ref(cast(pixbuf_simple_anim_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GdkPixbufSimpleAnim.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GdkPixbufSimpleAnim.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GdkPixbufSimpleAnim.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufSimpleAnimProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GdkPixbufSimpleAnim>(opaquePointer))
    }

    /// Creates a new, empty animation.
    public convenience init( width: CInt, height: CInt, rate: gfloat) {
        let rv = gdk_pixbuf_simple_anim_new(gint(width), gint(height), rate)
        self.init(cast(rv))
    }


}

public enum PixbufSimpleAnimPropertyName: String, PropertyNameProtocol {
    /// Whether the animation should loop when it reaches the end.
    case loop = "loop"
}

public extension PixbufSimpleAnimProtocol {
    /// Bind a `PixbufSimpleAnimPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: PixbufSimpleAnimPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(pixbuf_simple_anim_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }
}

public enum PixbufSimpleAnimSignalName: String, SignalNameProtocol {
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
    /// Whether the animation should loop when it reaches the end.
    case notifyLoop = "notify::loop"
}

public extension PixbufSimpleAnimProtocol {
    /// Connect a `PixbufSimpleAnimSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: PixbufSimpleAnimSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(pixbuf_simple_anim_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension PixbufSimpleAnimProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkPixbufSimpleAnim` instance.
    var pixbuf_simple_anim_ptr: UnsafeMutablePointer<GdkPixbufSimpleAnim> { return ptr.assumingMemoryBound(to: GdkPixbufSimpleAnim.self) }

    /// Adds a new frame to `animation`. The `pixbuf` must
    /// have the dimensions specified when the animation
    /// was constructed.
    func addFrame(pixbuf: PixbufProtocol) {
        gdk_pixbuf_simple_anim_add_frame(cast(pixbuf_simple_anim_ptr), cast(pixbuf.ptr))
    
    }

    /// Gets whether `animation` should loop indefinitely when it reaches the end.
    func getLoop() -> Bool {
        let rv = gdk_pixbuf_simple_anim_get_loop(cast(pixbuf_simple_anim_ptr))
        return Bool(rv != 0)
    }

    /// Sets whether `animation` should loop indefinitely when it reaches the end.
    func set(loop: Bool) {
        gdk_pixbuf_simple_anim_set_loop(cast(pixbuf_simple_anim_ptr), gboolean(loop ? 1 : 0))
    
    }
    /// Whether the animation should loop when it reaches the end.
    var loop: Bool {
        /// Gets whether `animation` should loop indefinitely when it reaches the end.
        get {
            let rv = gdk_pixbuf_simple_anim_get_loop(cast(pixbuf_simple_anim_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether `animation` should loop indefinitely when it reaches the end.
        nonmutating set {
            gdk_pixbuf_simple_anim_set_loop(cast(pixbuf_simple_anim_ptr), gboolean(newValue ? 1 : 0))
        }
    }
}



