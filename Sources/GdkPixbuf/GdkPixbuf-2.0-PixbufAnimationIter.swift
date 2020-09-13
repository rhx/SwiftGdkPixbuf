import CGLib
import CGdkPixbuf
import GLib
import GIO
import GModule
import GLibObject

// MARK: - PixbufAnimationIter Class

/// The `PixbufAnimationIterProtocol` protocol exposes the methods and properties of an underlying `GdkPixbufAnimationIter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PixbufAnimationIter`.
/// Alternatively, use `PixbufAnimationIterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// An opaque struct representing an iterator which points to a
/// certain position in an animation.
public protocol PixbufAnimationIterProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GdkPixbufAnimationIter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkPixbufAnimationIter` instance.
    var pixbuf_animation_iter_ptr: UnsafeMutablePointer<GdkPixbufAnimationIter>! { get }

}

/// The `PixbufAnimationIterRef` type acts as a lightweight Swift reference to an underlying `GdkPixbufAnimationIter` instance.
/// It exposes methods that can operate on this data type through `PixbufAnimationIterProtocol` conformance.
/// Use `PixbufAnimationIterRef` only as an `unowned` reference to an existing `GdkPixbufAnimationIter` instance.
///
/// An opaque struct representing an iterator which points to a
/// certain position in an animation.
public struct PixbufAnimationIterRef: PixbufAnimationIterProtocol {
        /// Untyped pointer to the underlying `GdkPixbufAnimationIter` instance.
    /// For type-safe access, use the generated, typed pointer `pixbuf_animation_iter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PixbufAnimationIterRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkPixbufAnimationIter>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkPixbufAnimationIter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkPixbufAnimationIter>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkPixbufAnimationIter>?) {
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

    /// Reference intialiser for a related type that implements `PixbufAnimationIterProtocol`
    @inlinable init<T: PixbufAnimationIterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationIterProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationIterProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationIterProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationIterProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationIterProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PixbufAnimationIter` type acts as a reference-counted owner of an underlying `GdkPixbufAnimationIter` instance.
/// It provides the methods that can operate on this data type through `PixbufAnimationIterProtocol` conformance.
/// Use `PixbufAnimationIter` as a strong reference or owner of a `GdkPixbufAnimationIter` instance.
///
/// An opaque struct representing an iterator which points to a
/// certain position in an animation.
open class PixbufAnimationIter: GLibObject.Object, PixbufAnimationIterProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufAnimationIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkPixbufAnimationIter>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufAnimationIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkPixbufAnimationIter>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufAnimationIter` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufAnimationIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufAnimationIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkPixbufAnimationIter>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufAnimationIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkPixbufAnimationIter>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkPixbufAnimationIter`.
    /// i.e., ownership is transferred to the `PixbufAnimationIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkPixbufAnimationIter>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `PixbufAnimationIterProtocol`
    /// Will retain `GdkPixbufAnimationIter`.
    /// - Parameter other: an instance of a related type that implements `PixbufAnimationIterProtocol`
    @inlinable public init<T: PixbufAnimationIterProtocol>(pixbufAnimationIter other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationIterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationIterProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationIterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationIterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no PixbufAnimationIter properties

public enum PixbufAnimationIterSignalName: String, SignalNameProtocol {
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

public extension PixbufAnimationIterProtocol {
    /// Connect a `PixbufAnimationIterSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: PixbufAnimationIterSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: PixbufAnimationIter Class: PixbufAnimationIterProtocol extension (methods and fields)
public extension PixbufAnimationIterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkPixbufAnimationIter` instance.
    @inlinable var pixbuf_animation_iter_ptr: UnsafeMutablePointer<GdkPixbufAnimationIter>! { return ptr?.assumingMemoryBound(to: GdkPixbufAnimationIter.self) }

    /// Possibly advances an animation to a new frame. Chooses the frame based
    /// on the start time passed to `gdk_pixbuf_animation_get_iter()`.
    /// 
    /// `current_time` would normally come from `g_get_current_time()`, and
    /// must be greater than or equal to the time passed to
    /// `gdk_pixbuf_animation_get_iter()`, and must increase or remain
    /// unchanged each time `gdk_pixbuf_animation_iter_get_pixbuf()` is
    /// called. That is, you can't go backward in time; animations only
    /// play forward.
    /// 
    /// As a shortcut, pass `nil` for the current time and `g_get_current_time()`
    /// will be invoked on your behalf. So you only need to explicitly pass
    /// `current_time` if you're doing something odd like playing the animation
    /// at double speed.
    /// 
    /// If this function returns `false`, there's no need to update the animation
    /// display, assuming the display had been rendered prior to advancing;
    /// if `true`, you need to call `gdk_pixbuf_animation_iter_get_pixbuf()`
    /// and update the display with the new pixbuf.
    @inlinable func advance(currentTime: GLib.TimeValRef? = nil) -> Bool {
        let rv = ((gdk_pixbuf_animation_iter_advance(pixbuf_animation_iter_ptr, currentTime?._ptr)) != 0)
        return rv
    }
    /// Possibly advances an animation to a new frame. Chooses the frame based
    /// on the start time passed to `gdk_pixbuf_animation_get_iter()`.
    /// 
    /// `current_time` would normally come from `g_get_current_time()`, and
    /// must be greater than or equal to the time passed to
    /// `gdk_pixbuf_animation_get_iter()`, and must increase or remain
    /// unchanged each time `gdk_pixbuf_animation_iter_get_pixbuf()` is
    /// called. That is, you can't go backward in time; animations only
    /// play forward.
    /// 
    /// As a shortcut, pass `nil` for the current time and `g_get_current_time()`
    /// will be invoked on your behalf. So you only need to explicitly pass
    /// `current_time` if you're doing something odd like playing the animation
    /// at double speed.
    /// 
    /// If this function returns `false`, there's no need to update the animation
    /// display, assuming the display had been rendered prior to advancing;
    /// if `true`, you need to call `gdk_pixbuf_animation_iter_get_pixbuf()`
    /// and update the display with the new pixbuf.
    @inlinable func advance<TimeValT: GLib.TimeValProtocol>(currentTime: TimeValT?) -> Bool {
        let rv = ((gdk_pixbuf_animation_iter_advance(pixbuf_animation_iter_ptr, currentTime?._ptr)) != 0)
        return rv
    }

    /// Gets the number of milliseconds the current pixbuf should be displayed,
    /// or -1 if the current pixbuf should be displayed forever. `g_timeout_add()`
    /// conveniently takes a timeout in milliseconds, so you can use a timeout
    /// to schedule the next update.
    /// 
    /// Note that some formats, like GIF, might clamp the timeout values in the
    /// image file to avoid updates that are just too quick. The minimum timeout
    /// for GIF images is currently 20 milliseconds.
    @inlinable func getDelayTime() -> Int {
        let rv = Int(gdk_pixbuf_animation_iter_get_delay_time(pixbuf_animation_iter_ptr))
        return rv
    }

    /// Gets the current pixbuf which should be displayed; the pixbuf might not
    /// be the same size as the animation itself
    /// (`gdk_pixbuf_animation_get_width()`, `gdk_pixbuf_animation_get_height()`).
    /// This pixbuf should be displayed for
    /// `gdk_pixbuf_animation_iter_get_delay_time()` milliseconds. The caller
    /// of this function does not own a reference to the returned pixbuf;
    /// the returned pixbuf will become invalid when the iterator advances
    /// to the next frame, which may happen anytime you call
    /// `gdk_pixbuf_animation_iter_advance()`. Copy the pixbuf to keep it
    /// (don't just add a reference), as it may get recycled as you advance
    /// the iterator.
    @inlinable func getPixbuf() -> PixbufRef! {
        let rv = PixbufRef(gconstpointer: gconstpointer(gdk_pixbuf_animation_iter_get_pixbuf(pixbuf_animation_iter_ptr)))
        return rv
    }

    /// Used to determine how to respond to the area_updated signal on
    /// `GdkPixbufLoader` when loading an animation. area_updated is emitted
    /// for an area of the frame currently streaming in to the loader. So if
    /// you're on the currently loading frame, you need to redraw the screen for
    /// the updated area.
    @inlinable func onCurrentlyLoadingFrame() -> Bool {
        let rv = ((gdk_pixbuf_animation_iter_on_currently_loading_frame(pixbuf_animation_iter_ptr)) != 0)
        return rv
    }
    /// Gets the number of milliseconds the current pixbuf should be displayed,
    /// or -1 if the current pixbuf should be displayed forever. `g_timeout_add()`
    /// conveniently takes a timeout in milliseconds, so you can use a timeout
    /// to schedule the next update.
    /// 
    /// Note that some formats, like GIF, might clamp the timeout values in the
    /// image file to avoid updates that are just too quick. The minimum timeout
    /// for GIF images is currently 20 milliseconds.
    @inlinable var delayTime: Int {
        /// Gets the number of milliseconds the current pixbuf should be displayed,
        /// or -1 if the current pixbuf should be displayed forever. `g_timeout_add()`
        /// conveniently takes a timeout in milliseconds, so you can use a timeout
        /// to schedule the next update.
        /// 
        /// Note that some formats, like GIF, might clamp the timeout values in the
        /// image file to avoid updates that are just too quick. The minimum timeout
        /// for GIF images is currently 20 milliseconds.
        get {
            let rv = Int(gdk_pixbuf_animation_iter_get_delay_time(pixbuf_animation_iter_ptr))
            return rv
        }
    }

    /// Gets the current pixbuf which should be displayed; the pixbuf might not
    /// be the same size as the animation itself
    /// (`gdk_pixbuf_animation_get_width()`, `gdk_pixbuf_animation_get_height()`).
    /// This pixbuf should be displayed for
    /// `gdk_pixbuf_animation_iter_get_delay_time()` milliseconds. The caller
    /// of this function does not own a reference to the returned pixbuf;
    /// the returned pixbuf will become invalid when the iterator advances
    /// to the next frame, which may happen anytime you call
    /// `gdk_pixbuf_animation_iter_advance()`. Copy the pixbuf to keep it
    /// (don't just add a reference), as it may get recycled as you advance
    /// the iterator.
    @inlinable var pixbuf: PixbufRef! {
        /// Gets the current pixbuf which should be displayed; the pixbuf might not
        /// be the same size as the animation itself
        /// (`gdk_pixbuf_animation_get_width()`, `gdk_pixbuf_animation_get_height()`).
        /// This pixbuf should be displayed for
        /// `gdk_pixbuf_animation_iter_get_delay_time()` milliseconds. The caller
        /// of this function does not own a reference to the returned pixbuf;
        /// the returned pixbuf will become invalid when the iterator advances
        /// to the next frame, which may happen anytime you call
        /// `gdk_pixbuf_animation_iter_advance()`. Copy the pixbuf to keep it
        /// (don't just add a reference), as it may get recycled as you advance
        /// the iterator.
        get {
            let rv = PixbufRef(gconstpointer: gconstpointer(gdk_pixbuf_animation_iter_get_pixbuf(pixbuf_animation_iter_ptr)))
            return rv
        }
    }


}



