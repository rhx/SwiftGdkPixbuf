import CGLib
import CGdkPixbuf
import GLib
import GIO
import GModule
import GLibObject

// MARK: - PixbufAnimation Class

/// The `PixbufAnimationProtocol` protocol exposes the methods and properties of an underlying `GdkPixbufAnimation` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PixbufAnimation`.
/// Alternatively, use `PixbufAnimationRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// An opaque struct representing an animation.
public protocol PixbufAnimationProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GdkPixbufAnimation` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkPixbufAnimation` instance.
    var pixbuf_animation_ptr: UnsafeMutablePointer<GdkPixbufAnimation>! { get }

}

/// The `PixbufAnimationRef` type acts as a lightweight Swift reference to an underlying `GdkPixbufAnimation` instance.
/// It exposes methods that can operate on this data type through `PixbufAnimationProtocol` conformance.
/// Use `PixbufAnimationRef` only as an `unowned` reference to an existing `GdkPixbufAnimation` instance.
///
/// An opaque struct representing an animation.
public struct PixbufAnimationRef: PixbufAnimationProtocol {
        /// Untyped pointer to the underlying `GdkPixbufAnimation` instance.
    /// For type-safe access, use the generated, typed pointer `pixbuf_animation_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PixbufAnimationRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkPixbufAnimation>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkPixbufAnimation>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkPixbufAnimation>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkPixbufAnimation>?) {
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

    /// Reference intialiser for a related type that implements `PixbufAnimationProtocol`
    @inlinable init<T: PixbufAnimationProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new animation by loading it from a file. The file format is
    /// detected automatically. If the file's format does not support multi-frame
    /// images, then an animation with a single frame will be created. Possible errors
    /// are in the `GDK_PIXBUF_ERROR` and `G_FILE_ERROR` domains.
    @inlinable init(file filename: UnsafePointer<CChar>!) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gdk_pixbuf_animation_new_from_file(filename, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new pixbuf animation by loading an image from an resource.
    /// 
    /// The file format is detected automatically. If `nil` is returned, then
    /// `error` will be set.
    @inlinable init(resource resourcePath: UnsafePointer<CChar>!) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gdk_pixbuf_animation_new_from_resource(resourcePath, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new animation by loading it from an input stream.
    /// 
    /// The file format is detected automatically. If `nil` is returned, then
    /// `error` will be set. The `cancellable` can be used to abort the operation
    /// from another thread. If the operation was cancelled, the error
    /// `G_IO_ERROR_CANCELLED` will be returned. Other possible errors are in
    /// the `GDK_PIXBUF_ERROR` and `G_IO_ERROR` domains.
    /// 
    /// The stream is not closed.
    @inlinable init<CancellableT: GIO.CancellableProtocol, InputStreamT: GIO.InputStreamProtocol>(stream: InputStreamT, cancellable: CancellableT?) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gdk_pixbuf_animation_new_from_stream(stream.input_stream_ptr, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Finishes an asynchronous pixbuf animation creation operation started with
    /// `gdk_pixbuf_animation_new_from_stream_async()`.
    @inlinable init<AsyncResultT: GIO.AsyncResultProtocol>(streamFinish asyncResult: AsyncResultT) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gdk_pixbuf_animation_new_from_stream_finish(asyncResult.async_result_ptr, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new animation by loading it from a file. The file format is
    /// detected automatically. If the file's format does not support multi-frame
    /// images, then an animation with a single frame will be created. Possible errors
    /// are in the `GDK_PIXBUF_ERROR` and `G_FILE_ERROR` domains.
    @inlinable static func newFrom(file filename: UnsafePointer<CChar>!) throws -> PixbufAnimationRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = PixbufAnimationRef(gconstpointer: gconstpointer(gdk_pixbuf_animation_new_from_file(filename, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Creates a new pixbuf animation by loading an image from an resource.
    /// 
    /// The file format is detected automatically. If `nil` is returned, then
    /// `error` will be set.
    @inlinable static func newFrom(resource resourcePath: UnsafePointer<CChar>!) throws -> PixbufAnimationRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = PixbufAnimationRef(gconstpointer: gconstpointer(gdk_pixbuf_animation_new_from_resource(resourcePath, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Creates a new animation by loading it from an input stream.
    /// 
    /// The file format is detected automatically. If `nil` is returned, then
    /// `error` will be set. The `cancellable` can be used to abort the operation
    /// from another thread. If the operation was cancelled, the error
    /// `G_IO_ERROR_CANCELLED` will be returned. Other possible errors are in
    /// the `GDK_PIXBUF_ERROR` and `G_IO_ERROR` domains.
    /// 
    /// The stream is not closed.
    @inlinable static func newFrom<CancellableT: GIO.CancellableProtocol, InputStreamT: GIO.InputStreamProtocol>(stream: InputStreamT, cancellable: CancellableT?) throws -> PixbufAnimationRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = PixbufAnimationRef(gconstpointer: gconstpointer(gdk_pixbuf_animation_new_from_stream(stream.input_stream_ptr, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Finishes an asynchronous pixbuf animation creation operation started with
    /// `gdk_pixbuf_animation_new_from_stream_async()`.
    @inlinable static func newFrom<AsyncResultT: GIO.AsyncResultProtocol>(streamFinish asyncResult: AsyncResultT) throws -> PixbufAnimationRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = PixbufAnimationRef(gconstpointer: gconstpointer(gdk_pixbuf_animation_new_from_stream_finish(asyncResult.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }
}

/// The `PixbufAnimation` type acts as a reference-counted owner of an underlying `GdkPixbufAnimation` instance.
/// It provides the methods that can operate on this data type through `PixbufAnimationProtocol` conformance.
/// Use `PixbufAnimation` as a strong reference or owner of a `GdkPixbufAnimation` instance.
///
/// An opaque struct representing an animation.
open class PixbufAnimation: GLibObject.Object, PixbufAnimationProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufAnimation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkPixbufAnimation>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufAnimation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkPixbufAnimation>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufAnimation` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufAnimation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufAnimation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkPixbufAnimation>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PixbufAnimation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkPixbufAnimation>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkPixbufAnimation`.
    /// i.e., ownership is transferred to the `PixbufAnimation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkPixbufAnimation>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `PixbufAnimationProtocol`
    /// Will retain `GdkPixbufAnimation`.
    /// - Parameter other: an instance of a related type that implements `PixbufAnimationProtocol`
    @inlinable public init<T: PixbufAnimationProtocol>(pixbufAnimation other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new animation by loading it from a file. The file format is
    /// detected automatically. If the file's format does not support multi-frame
    /// images, then an animation with a single frame will be created. Possible errors
    /// are in the `GDK_PIXBUF_ERROR` and `G_FILE_ERROR` domains.
    @inlinable public init(file filename: UnsafePointer<CChar>!) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gdk_pixbuf_animation_new_from_file(filename, &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: (rv))
    }

    /// Creates a new pixbuf animation by loading an image from an resource.
    /// 
    /// The file format is detected automatically. If `nil` is returned, then
    /// `error` will be set.
    @inlinable public init(resource resourcePath: UnsafePointer<CChar>!) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gdk_pixbuf_animation_new_from_resource(resourcePath, &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: (rv))
    }

    /// Creates a new animation by loading it from an input stream.
    /// 
    /// The file format is detected automatically. If `nil` is returned, then
    /// `error` will be set. The `cancellable` can be used to abort the operation
    /// from another thread. If the operation was cancelled, the error
    /// `G_IO_ERROR_CANCELLED` will be returned. Other possible errors are in
    /// the `GDK_PIXBUF_ERROR` and `G_IO_ERROR` domains.
    /// 
    /// The stream is not closed.
    @inlinable public init<CancellableT: GIO.CancellableProtocol, InputStreamT: GIO.InputStreamProtocol>(stream: InputStreamT, cancellable: CancellableT?) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gdk_pixbuf_animation_new_from_stream(stream.input_stream_ptr, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: (rv))
    }

    /// Finishes an asynchronous pixbuf animation creation operation started with
    /// `gdk_pixbuf_animation_new_from_stream_async()`.
    @inlinable public init<AsyncResultT: GIO.AsyncResultProtocol>(streamFinish asyncResult: AsyncResultT) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gdk_pixbuf_animation_new_from_stream_finish(asyncResult.async_result_ptr, &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: (rv))
    }

    /// Creates a new animation by loading it from a file. The file format is
    /// detected automatically. If the file's format does not support multi-frame
    /// images, then an animation with a single frame will be created. Possible errors
    /// are in the `GDK_PIXBUF_ERROR` and `G_FILE_ERROR` domains.
    @inlinable public static func newFrom(file filename: UnsafePointer<CChar>!) throws -> PixbufAnimation! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = PixbufAnimation(gconstpointer: gconstpointer(gdk_pixbuf_animation_new_from_file(filename, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Creates a new pixbuf animation by loading an image from an resource.
    /// 
    /// The file format is detected automatically. If `nil` is returned, then
    /// `error` will be set.
    @inlinable public static func newFrom(resource resourcePath: UnsafePointer<CChar>!) throws -> PixbufAnimation! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = PixbufAnimation(gconstpointer: gconstpointer(gdk_pixbuf_animation_new_from_resource(resourcePath, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Creates a new animation by loading it from an input stream.
    /// 
    /// The file format is detected automatically. If `nil` is returned, then
    /// `error` will be set. The `cancellable` can be used to abort the operation
    /// from another thread. If the operation was cancelled, the error
    /// `G_IO_ERROR_CANCELLED` will be returned. Other possible errors are in
    /// the `GDK_PIXBUF_ERROR` and `G_IO_ERROR` domains.
    /// 
    /// The stream is not closed.
    @inlinable public static func newFrom<CancellableT: GIO.CancellableProtocol, InputStreamT: GIO.InputStreamProtocol>(stream: InputStreamT, cancellable: CancellableT?) throws -> PixbufAnimation! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = PixbufAnimation(gconstpointer: gconstpointer(gdk_pixbuf_animation_new_from_stream(stream.input_stream_ptr, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Finishes an asynchronous pixbuf animation creation operation started with
    /// `gdk_pixbuf_animation_new_from_stream_async()`.
    @inlinable public static func newFrom<AsyncResultT: GIO.AsyncResultProtocol>(streamFinish asyncResult: AsyncResultT) throws -> PixbufAnimation! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = PixbufAnimation(gconstpointer: gconstpointer(gdk_pixbuf_animation_new_from_stream_finish(asyncResult.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

}

// MARK: no PixbufAnimation properties

public enum PixbufAnimationSignalName: String, SignalNameProtocol {
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

public extension PixbufAnimationProtocol {
    /// Connect a `PixbufAnimationSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: PixbufAnimationSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: PixbufAnimation Class: PixbufAnimationProtocol extension (methods and fields)
public extension PixbufAnimationProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkPixbufAnimation` instance.
    @inlinable var pixbuf_animation_ptr: UnsafeMutablePointer<GdkPixbufAnimation>! { return ptr?.assumingMemoryBound(to: GdkPixbufAnimation.self) }

    /// Queries the height of the bounding box of a pixbuf animation.
    @inlinable func getHeight() -> Int {
        let rv = Int(gdk_pixbuf_animation_get_height(pixbuf_animation_ptr))
        return rv
    }

    /// Get an iterator for displaying an animation. The iterator provides
    /// the frames that should be displayed at a given time. It should be
    /// freed after use with `g_object_unref()`.
    /// 
    /// `start_time` would normally come from `g_get_current_time()`, and marks
    /// the beginning of animation playback. After creating an iterator, you
    /// should immediately display the pixbuf returned by
    /// `gdk_pixbuf_animation_iter_get_pixbuf()`. Then, you should install
    /// a timeout (with `g_timeout_add()`) or by some other mechanism ensure
    /// that you'll update the image after
    /// `gdk_pixbuf_animation_iter_get_delay_time()` milliseconds. Each time
    /// the image is updated, you should reinstall the timeout with the new,
    /// possibly-changed delay time.
    /// 
    /// As a shortcut, if `start_time` is `nil`, the result of
    /// `g_get_current_time()` will be used automatically.
    /// 
    /// To update the image (i.e. possibly change the result of
    /// `gdk_pixbuf_animation_iter_get_pixbuf()` to a new frame of the animation),
    /// call `gdk_pixbuf_animation_iter_advance()`.
    /// 
    /// If you're using `GdkPixbufLoader`, in addition to updating the image
    /// after the delay time, you should also update it whenever you
    /// receive the area_updated signal and
    /// `gdk_pixbuf_animation_iter_on_currently_loading_frame()` returns
    /// `true`. In this case, the frame currently being fed into the loader
    /// has received new data, so needs to be refreshed. The delay time for
    /// a frame may also be modified after an area_updated signal, for
    /// example if the delay time for a frame is encoded in the data after
    /// the frame itself. So your timeout should be reinstalled after any
    /// area_updated signal.
    /// 
    /// A delay time of -1 is possible, indicating "infinite."
    @inlinable func getIter(startTime: GLib.TimeValRef? = nil) -> PixbufAnimationIterRef! {
        let rv = PixbufAnimationIterRef(gconstpointer: gconstpointer(gdk_pixbuf_animation_get_iter(pixbuf_animation_ptr, startTime?._ptr)))
        return rv
    }
    /// Get an iterator for displaying an animation. The iterator provides
    /// the frames that should be displayed at a given time. It should be
    /// freed after use with `g_object_unref()`.
    /// 
    /// `start_time` would normally come from `g_get_current_time()`, and marks
    /// the beginning of animation playback. After creating an iterator, you
    /// should immediately display the pixbuf returned by
    /// `gdk_pixbuf_animation_iter_get_pixbuf()`. Then, you should install
    /// a timeout (with `g_timeout_add()`) or by some other mechanism ensure
    /// that you'll update the image after
    /// `gdk_pixbuf_animation_iter_get_delay_time()` milliseconds. Each time
    /// the image is updated, you should reinstall the timeout with the new,
    /// possibly-changed delay time.
    /// 
    /// As a shortcut, if `start_time` is `nil`, the result of
    /// `g_get_current_time()` will be used automatically.
    /// 
    /// To update the image (i.e. possibly change the result of
    /// `gdk_pixbuf_animation_iter_get_pixbuf()` to a new frame of the animation),
    /// call `gdk_pixbuf_animation_iter_advance()`.
    /// 
    /// If you're using `GdkPixbufLoader`, in addition to updating the image
    /// after the delay time, you should also update it whenever you
    /// receive the area_updated signal and
    /// `gdk_pixbuf_animation_iter_on_currently_loading_frame()` returns
    /// `true`. In this case, the frame currently being fed into the loader
    /// has received new data, so needs to be refreshed. The delay time for
    /// a frame may also be modified after an area_updated signal, for
    /// example if the delay time for a frame is encoded in the data after
    /// the frame itself. So your timeout should be reinstalled after any
    /// area_updated signal.
    /// 
    /// A delay time of -1 is possible, indicating "infinite."
    @inlinable func getIter<TimeValT: GLib.TimeValProtocol>(startTime: TimeValT?) -> PixbufAnimationIterRef! {
        let rv = PixbufAnimationIterRef(gconstpointer: gconstpointer(gdk_pixbuf_animation_get_iter(pixbuf_animation_ptr, startTime?._ptr)))
        return rv
    }

    /// If an animation is really just a plain image (has only one frame),
    /// this function returns that image. If the animation is an animation,
    /// this function returns a reasonable thing to display as a static
    /// unanimated image, which might be the first frame, or something more
    /// sophisticated. If an animation hasn't loaded any frames yet, this
    /// function will return `nil`.
    @inlinable func getStaticImage() -> PixbufRef! {
        let rv = PixbufRef(gconstpointer: gconstpointer(gdk_pixbuf_animation_get_static_image(pixbuf_animation_ptr)))
        return rv
    }

    /// Queries the width of the bounding box of a pixbuf animation.
    @inlinable func getWidth() -> Int {
        let rv = Int(gdk_pixbuf_animation_get_width(pixbuf_animation_ptr))
        return rv
    }

    /// Adds a reference to an animation.
    ///
    /// **ref is deprecated:**
    /// Use g_object_ref().
    @available(*, deprecated) @discardableResult @inlinable func ref() -> PixbufAnimationRef! {
        guard let rv = PixbufAnimationRef(gconstpointer: gconstpointer(g_object_ref(pixbuf_animation_ptr))) else { return nil }
        return rv
    }

    /// Removes a reference from an animation.
    ///
    /// **unref is deprecated:**
    /// Use g_object_unref().
    @available(*, deprecated) @inlinable func unref() {
        g_object_unref(pixbuf_animation_ptr)
    
    }
    /// Queries the height of the bounding box of a pixbuf animation.
    @inlinable var height: Int {
        /// Queries the height of the bounding box of a pixbuf animation.
        get {
            let rv = Int(gdk_pixbuf_animation_get_height(pixbuf_animation_ptr))
            return rv
        }
    }

    /// If you load a file with `gdk_pixbuf_animation_new_from_file()` and it
    /// turns out to be a plain, unanimated image, then this function will
    /// return `true`. Use `gdk_pixbuf_animation_get_static_image()` to retrieve
    /// the image.
    @inlinable var isStaticImage: Bool {
        /// If you load a file with `gdk_pixbuf_animation_new_from_file()` and it
        /// turns out to be a plain, unanimated image, then this function will
        /// return `true`. Use `gdk_pixbuf_animation_get_static_image()` to retrieve
        /// the image.
        get {
            let rv = ((gdk_pixbuf_animation_is_static_image(pixbuf_animation_ptr)) != 0)
            return rv
        }
    }

    /// If an animation is really just a plain image (has only one frame),
    /// this function returns that image. If the animation is an animation,
    /// this function returns a reasonable thing to display as a static
    /// unanimated image, which might be the first frame, or something more
    /// sophisticated. If an animation hasn't loaded any frames yet, this
    /// function will return `nil`.
    @inlinable var staticImage: PixbufRef! {
        /// If an animation is really just a plain image (has only one frame),
        /// this function returns that image. If the animation is an animation,
        /// this function returns a reasonable thing to display as a static
        /// unanimated image, which might be the first frame, or something more
        /// sophisticated. If an animation hasn't loaded any frames yet, this
        /// function will return `nil`.
        get {
            let rv = PixbufRef(gconstpointer: gconstpointer(gdk_pixbuf_animation_get_static_image(pixbuf_animation_ptr)))
            return rv
        }
    }

    /// Queries the width of the bounding box of a pixbuf animation.
    @inlinable var width: Int {
        /// Queries the width of the bounding box of a pixbuf animation.
        get {
            let rv = Int(gdk_pixbuf_animation_get_width(pixbuf_animation_ptr))
            return rv
        }
    }


}



