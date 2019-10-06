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
public protocol PixbufAnimationProtocol: ObjectProtocol {
    /// Untyped pointer to the underlying `GdkPixbufAnimation` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkPixbufAnimation` instance.
    var pixbuf_animation_ptr: UnsafeMutablePointer<GdkPixbufAnimation> { get }
}

/// The `PixbufAnimationRef` type acts as a lightweight Swift reference to an underlying `GdkPixbufAnimation` instance.
/// It exposes methods that can operate on this data type through `PixbufAnimationProtocol` conformance.
/// Use `PixbufAnimationRef` only as an `unowned` reference to an existing `GdkPixbufAnimation` instance.
///
/// An opaque struct representing an animation.
public struct PixbufAnimationRef: PixbufAnimationProtocol {
    /// Untyped pointer to the underlying `GdkPixbufAnimation` instance.
    /// For type-safe access, use the generated, typed pointer `pixbuf_animation_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PixbufAnimationRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkPixbufAnimation>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PixbufAnimationProtocol`
    init<T: PixbufAnimationProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new animation by loading it from a file. The file format is
    /// detected automatically. If the file's format does not support multi-frame
    /// images, then an animation with a single frame will be created. Possible errors
    /// are in the `GDK_PIXBUF_ERROR` and `G_FILE_ERROR` domains.
    init(file String_: UnsafePointer<CChar>) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gdk_pixbuf_animation_new_from_file(String_, &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }

    /// Creates a new pixbuf animation by loading an image from an resource.
    /// 
    /// The file format is detected automatically. If `nil` is returned, then
    /// `error` will be set.
    init(resource resource_path: UnsafePointer<CChar>) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gdk_pixbuf_animation_new_from_resource(resource_path, &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
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
    init(stream: InputStreamProtocol, cancellable: CancellableProtocol) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gdk_pixbuf_animation_new_from_stream(cast(stream.ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }

    /// Finishes an asynchronous pixbuf animation creation operation started with
    /// `gdk_pixbuf_animation_new_from_stream_async()`.
    init(streamFinish async_result: AsyncResultProtocol) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gdk_pixbuf_animation_new_from_stream_finish(cast(async_result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }
    /// Creates a new animation by loading it from a file. The file format is
    /// detected automatically. If the file's format does not support multi-frame
    /// images, then an animation with a single frame will be created. Possible errors
    /// are in the `GDK_PIXBUF_ERROR` and `G_FILE_ERROR` domains.
    static func newFrom(file String_: UnsafePointer<CChar>) throws -> PixbufAnimationRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gdk_pixbuf_animation_new_from_file(String_, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { PixbufAnimationRef(cast($0)) }
    }

    /// Creates a new pixbuf animation by loading an image from an resource.
    /// 
    /// The file format is detected automatically. If `nil` is returned, then
    /// `error` will be set.
    static func newFrom(resource resource_path: UnsafePointer<CChar>) throws -> PixbufAnimationRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gdk_pixbuf_animation_new_from_resource(resource_path, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { PixbufAnimationRef(cast($0)) }
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
    static func newFrom(stream: InputStreamProtocol, cancellable: CancellableProtocol) throws -> PixbufAnimationRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gdk_pixbuf_animation_new_from_stream(cast(stream.ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { PixbufAnimationRef(cast($0)) }
    }

    /// Finishes an asynchronous pixbuf animation creation operation started with
    /// `gdk_pixbuf_animation_new_from_stream_async()`.
    static func newFrom(streamFinish async_result: AsyncResultProtocol) throws -> PixbufAnimationRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gdk_pixbuf_animation_new_from_stream_finish(cast(async_result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { PixbufAnimationRef(cast($0)) }
    }
}

/// The `PixbufAnimation` type acts as a reference-counted owner of an underlying `GdkPixbufAnimation` instance.
/// It provides the methods that can operate on this data type through `PixbufAnimationProtocol` conformance.
/// Use `PixbufAnimation` as a strong reference or owner of a `GdkPixbufAnimation` instance.
///
/// An opaque struct representing an animation.
open class PixbufAnimation: Object, PixbufAnimationProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `PixbufAnimation` instance.
    public init(_ op: UnsafeMutablePointer<GdkPixbufAnimation>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `PixbufAnimationProtocol`
    /// Will retain `GdkPixbufAnimation`.
    public convenience init<T: PixbufAnimationProtocol>(_ other: T) {
        self.init(cast(other.pixbuf_animation_ptr))
        g_object_ref(cast(pixbuf_animation_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GdkPixbufAnimation.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GdkPixbufAnimation.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GdkPixbufAnimation.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufAnimationProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GdkPixbufAnimation>(opaquePointer))
    }

    /// Creates a new animation by loading it from a file. The file format is
    /// detected automatically. If the file's format does not support multi-frame
    /// images, then an animation with a single frame will be created. Possible errors
    /// are in the `GDK_PIXBUF_ERROR` and `G_FILE_ERROR` domains.
    public convenience init(file String_: UnsafePointer<CChar>) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gdk_pixbuf_animation_new_from_file(String_, &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }

    /// Creates a new pixbuf animation by loading an image from an resource.
    /// 
    /// The file format is detected automatically. If `nil` is returned, then
    /// `error` will be set.
    public convenience init(resource resource_path: UnsafePointer<CChar>) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gdk_pixbuf_animation_new_from_resource(resource_path, &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
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
    public convenience init(stream: InputStreamProtocol, cancellable: CancellableProtocol) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gdk_pixbuf_animation_new_from_stream(cast(stream.ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }

    /// Finishes an asynchronous pixbuf animation creation operation started with
    /// `gdk_pixbuf_animation_new_from_stream_async()`.
    public convenience init(streamFinish async_result: AsyncResultProtocol) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gdk_pixbuf_animation_new_from_stream_finish(cast(async_result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }

    /// Creates a new animation by loading it from a file. The file format is
    /// detected automatically. If the file's format does not support multi-frame
    /// images, then an animation with a single frame will be created. Possible errors
    /// are in the `GDK_PIXBUF_ERROR` and `G_FILE_ERROR` domains.
    public static func newFrom(file String_: UnsafePointer<CChar>) throws -> PixbufAnimation! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gdk_pixbuf_animation_new_from_file(String_, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { PixbufAnimation(cast($0)) }
    }

    /// Creates a new pixbuf animation by loading an image from an resource.
    /// 
    /// The file format is detected automatically. If `nil` is returned, then
    /// `error` will be set.
    public static func newFrom(resource resource_path: UnsafePointer<CChar>) throws -> PixbufAnimation! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gdk_pixbuf_animation_new_from_resource(resource_path, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { PixbufAnimation(cast($0)) }
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
    public static func newFrom(stream: InputStreamProtocol, cancellable: CancellableProtocol) throws -> PixbufAnimation! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gdk_pixbuf_animation_new_from_stream(cast(stream.ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { PixbufAnimation(cast($0)) }
    }

    /// Finishes an asynchronous pixbuf animation creation operation started with
    /// `gdk_pixbuf_animation_new_from_stream_async()`.
    public static func newFrom(streamFinish async_result: AsyncResultProtocol) throws -> PixbufAnimation! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gdk_pixbuf_animation_new_from_stream_finish(cast(async_result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { PixbufAnimation(cast($0)) }
    }

}

// MARK: - no PixbufAnimation properties

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
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"

}

public extension PixbufAnimationProtocol {
    /// Connect a `PixbufAnimationSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: PixbufAnimationSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(pixbuf_animation_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension PixbufAnimationProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkPixbufAnimation` instance.
    var pixbuf_animation_ptr: UnsafeMutablePointer<GdkPixbufAnimation> { return ptr.assumingMemoryBound(to: GdkPixbufAnimation.self) }

    /// Queries the height of the bounding box of a pixbuf animation.
    func getHeight() -> CInt {
        let rv = gdk_pixbuf_animation_get_height(cast(pixbuf_animation_ptr))
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
    func getIter(startTime start_time: TimeValProtocol) -> UnsafeMutablePointer<GdkPixbufAnimationIter>! {
        let rv = gdk_pixbuf_animation_get_iter(cast(pixbuf_animation_ptr), cast(start_time.ptr))
        return cast(rv)
    }

    /// If an animation is really just a plain image (has only one frame),
    /// this function returns that image. If the animation is an animation,
    /// this function returns a reasonable thing to display as a static
    /// unanimated image, which might be the first frame, or something more
    /// sophisticated. If an animation hasn't loaded any frames yet, this
    /// function will return `nil`.
    func getStaticImage() -> UnsafeMutablePointer<GdkPixbuf>! {
        let rv = gdk_pixbuf_animation_get_static_image(cast(pixbuf_animation_ptr))
        return cast(rv)
    }

    /// Queries the width of the bounding box of a pixbuf animation.
    func getWidth() -> CInt {
        let rv = gdk_pixbuf_animation_get_width(cast(pixbuf_animation_ptr))
        return rv
    }

    /// Adds a reference to an animation.
    ///
    /// **ref is deprecated:**
    /// Use g_object_ref().
    @available(*, deprecated) func ref() -> UnsafeMutablePointer<GdkPixbufAnimation>! {
        let rv = g_object_ref(cast(pixbuf_animation_ptr))
        return cast(rv)
    }

    /// Removes a reference from an animation.
    ///
    /// **unref is deprecated:**
    /// Use g_object_unref().
    @available(*, deprecated) func unref() {
        g_object_unref(cast(pixbuf_animation_ptr))
    
    }
    /// Queries the height of the bounding box of a pixbuf animation.
    var height: CInt {
        /// Queries the height of the bounding box of a pixbuf animation.
        get {
            let rv = gdk_pixbuf_animation_get_height(cast(pixbuf_animation_ptr))
            return rv
        }
    }

    /// If you load a file with `gdk_pixbuf_animation_new_from_file()` and it
    /// turns out to be a plain, unanimated image, then this function will
    /// return `true`. Use `gdk_pixbuf_animation_get_static_image()` to retrieve
    /// the image.
    var isStaticImage: Bool {
        /// If you load a file with `gdk_pixbuf_animation_new_from_file()` and it
        /// turns out to be a plain, unanimated image, then this function will
        /// return `true`. Use `gdk_pixbuf_animation_get_static_image()` to retrieve
        /// the image.
        get {
            let rv = gdk_pixbuf_animation_is_static_image(cast(pixbuf_animation_ptr))
            return Bool(rv != 0)
        }
    }

    /// If an animation is really just a plain image (has only one frame),
    /// this function returns that image. If the animation is an animation,
    /// this function returns a reasonable thing to display as a static
    /// unanimated image, which might be the first frame, or something more
    /// sophisticated. If an animation hasn't loaded any frames yet, this
    /// function will return `nil`.
    var staticImage: UnsafeMutablePointer<GdkPixbuf>! {
        /// If an animation is really just a plain image (has only one frame),
        /// this function returns that image. If the animation is an animation,
        /// this function returns a reasonable thing to display as a static
        /// unanimated image, which might be the first frame, or something more
        /// sophisticated. If an animation hasn't loaded any frames yet, this
        /// function will return `nil`.
        get {
            let rv = gdk_pixbuf_animation_get_static_image(cast(pixbuf_animation_ptr))
            return cast(rv)
        }
    }

    /// Queries the width of the bounding box of a pixbuf animation.
    var width: CInt {
        /// Queries the width of the bounding box of a pixbuf animation.
        get {
            let rv = gdk_pixbuf_animation_get_width(cast(pixbuf_animation_ptr))
            return rv
        }
    }
}



