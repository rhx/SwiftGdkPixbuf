import CGLib
import CGdkPixbuf
import GLib
import GIO
import GModule
import GLibObject

// MARK: - Pixbuf Class

/// The `PixbufProtocol` protocol exposes the methods and properties of an underlying `GdkPixbuf` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Pixbuf`.
/// Alternatively, use `PixbufRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// This is the main structure in the gdk-pixbuf library.  It is
/// used to represent images.  It contains information about the
/// image's pixel data, its color space, bits per sample, width and
/// height, and the rowstride (the number of bytes between the start of
/// one row and the start of the next).
public protocol PixbufProtocol: GLibObject.ObjectProtocol, GIO.IconProtocol, GIO.LoadableIconProtocol {
        /// Untyped pointer to the underlying `GdkPixbuf` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GdkPixbuf` instance.
    var pixbuf_ptr: UnsafeMutablePointer<GdkPixbuf>! { get }

}

/// The `PixbufRef` type acts as a lightweight Swift reference to an underlying `GdkPixbuf` instance.
/// It exposes methods that can operate on this data type through `PixbufProtocol` conformance.
/// Use `PixbufRef` only as an `unowned` reference to an existing `GdkPixbuf` instance.
///
/// This is the main structure in the gdk-pixbuf library.  It is
/// used to represent images.  It contains information about the
/// image's pixel data, its color space, bits per sample, width and
/// height, and the rowstride (the number of bytes between the start of
/// one row and the start of the next).
public struct PixbufRef: PixbufProtocol {
        /// Untyped pointer to the underlying `GdkPixbuf` instance.
    /// For type-safe access, use the generated, typed pointer `pixbuf_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PixbufRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GdkPixbuf>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GdkPixbuf>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GdkPixbuf>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GdkPixbuf>?) {
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

    /// Reference intialiser for a related type that implements `PixbufProtocol`
    @inlinable init<T: PixbufProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GdkPixbuf` structure and allocates a buffer for it.  The
    /// buffer has an optimal rowstride.  Note that the buffer is not cleared;
    /// you will have to fill it completely yourself.
    @inlinable init( colorspace: GdkColorspace, hasAlpha: Bool, bitsPerSample: Int, width: Int, height: Int) {
        let rv = gdk_pixbuf_new(colorspace, gboolean((hasAlpha) ? 1 : 0), gint(bitsPerSample), gint(width), gint(height))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GdkPixbuf` out of in-memory readonly image data.
    /// Currently only RGB images with 8 bits per sample are supported.
    /// This is the `GBytes` variant of `gdk_pixbuf_new_from_data()`.
    @inlinable init<BytesT: GLib.BytesProtocol>(bytes data: BytesT, colorspace: GdkColorspace, hasAlpha: Bool, bitsPerSample: Int, width: Int, height: Int, rowstride: Int) {
        let rv = gdk_pixbuf_new_from_bytes(data.bytes_ptr, colorspace, gboolean((hasAlpha) ? 1 : 0), gint(bitsPerSample), gint(width), gint(height), gint(rowstride))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GdkPixbuf` out of in-memory image data.  Currently only RGB
    /// images with 8 bits per sample are supported.
    /// 
    /// Since you are providing a pre-allocated pixel buffer, you must also
    /// specify a way to free that data.  This is done with a function of
    /// type `GdkPixbufDestroyNotify`.  When a pixbuf created with is
    /// finalized, your destroy notification function will be called, and
    /// it is its responsibility to free the pixel array.
    /// 
    /// See also `gdk_pixbuf_new_from_bytes()`.
    @inlinable init(data: UnsafePointer<guchar>!, colorspace: GdkColorspace, hasAlpha: Bool, bitsPerSample: Int, width: Int, height: Int, rowstride: Int, destroyFn: GdkPixbufDestroyNotify? = nil, destroyFnData: gpointer! = nil) {
        let rv = gdk_pixbuf_new_from_data(data, colorspace, gboolean((hasAlpha) ? 1 : 0), gint(bitsPerSample), gint(width), gint(height), gint(rowstride), destroyFn, destroyFnData)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new pixbuf by loading an image from a file.  The file format is
    /// detected automatically. If `nil` is returned, then `error` will be set.
    /// Possible errors are in the `GDK_PIXBUF_ERROR` and `G_FILE_ERROR` domains.
    @inlinable init(file filename: UnsafePointer<CChar>!) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gdk_pixbuf_new_from_file(filename, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new pixbuf by loading an image from a file.  The file format is
    /// detected automatically. If `nil` is returned, then `error` will be set.
    /// Possible errors are in the `GDK_PIXBUF_ERROR` and `G_FILE_ERROR` domains.
    /// The image will be scaled to fit in the requested size, optionally preserving
    /// the image's aspect ratio.
    /// 
    /// When preserving the aspect ratio, a `width` of -1 will cause the image
    /// to be scaled to the exact given height, and a `height` of -1 will cause
    /// the image to be scaled to the exact given width. When not preserving
    /// aspect ratio, a `width` or `height` of -1 means to not scale the image
    /// at all in that dimension. Negative values for `width` and `height` are
    /// allowed since 2.8.
    @inlinable init(fileAtScale filename: UnsafePointer<CChar>!, width: Int, height: Int, preserveAspectRatio: Bool) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gdk_pixbuf_new_from_file_at_scale(filename, gint(width), gint(height), gboolean((preserveAspectRatio) ? 1 : 0), &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new pixbuf by loading an image from a file.
    /// The file format is detected automatically. If `nil` is returned, then
    /// `error` will be set. Possible errors are in the `GDK_PIXBUF_ERROR` and
    /// `G_FILE_ERROR` domains.
    /// 
    /// The image will be scaled to fit in the requested size, preserving
    /// the image's aspect ratio. Note that the returned pixbuf may be smaller
    /// than `width` x `height`, if the aspect ratio requires it. To load
    /// and image at the requested size, regardless of aspect ratio, use
    /// `gdk_pixbuf_new_from_file_at_scale()`.
    @inlinable init(fileAtSize filename: UnsafePointer<CChar>!, width: Int, height: Int) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gdk_pixbuf_new_from_file_at_size(filename, gint(width), gint(height), &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Create a `GdkPixbuf` from a flat representation that is suitable for
    /// storing as inline data in a program. This is useful if you want to
    /// ship a program with images, but don't want to depend on any
    /// external files.
    /// 
    /// gdk-pixbuf ships with a program called [gdk-pixbuf-csource](#gdk-pixbuf-csource),
    /// which allows for conversion of `GdkPixbufs` into such a inline representation.
    /// In almost all cases, you should pass the `--raw` option to
    /// `gdk-pixbuf-csource`. A sample invocation would be:
    /// 
    /// ```
    ///  gdk-pixbuf-csource --raw --name=myimage_inline myimage.png
    /// ```
    /// 
    /// For the typical case where the inline pixbuf is read-only static data,
    /// you don't need to copy the pixel data unless you intend to write to
    /// it, so you can pass `false` for `copy_pixels`.  (If you pass `--rle` to
    /// `gdk-pixbuf-csource`, a copy will be made even if `copy_pixels` is `false`,
    /// so using this option is generally a bad idea.)
    /// 
    /// If you create a pixbuf from const inline data compiled into your
    /// program, it's probably safe to ignore errors and disable length checks,
    /// since things will always succeed:
    /// ```
    /// pixbuf = gdk_pixbuf_new_from_inline (-1, myimage_inline, FALSE, NULL);
    /// ```
    /// 
    /// For non-const inline data, you could get out of memory. For untrusted
    /// inline data located at runtime, you could have corrupt inline data in
    /// addition.
    ///
    /// **new_from_inline is deprecated:**
    /// Use #GResource instead.
    @available(*, deprecated) @inlinable init(inline dataLength: Int, data: UnsafePointer<guint8>!, copyPixels: Bool) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gdk_pixbuf_new_from_inline(gint(dataLength), data, gboolean((copyPixels) ? 1 : 0), &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new pixbuf by loading an image from an resource.
    /// 
    /// The file format is detected automatically. If `nil` is returned, then
    /// `error` will be set.
    @inlinable init(resource resourcePath: UnsafePointer<CChar>!) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gdk_pixbuf_new_from_resource(resourcePath, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new pixbuf by loading an image from an resource.
    /// 
    /// The file format is detected automatically. If `nil` is returned, then
    /// `error` will be set.
    /// 
    /// The image will be scaled to fit in the requested size, optionally
    /// preserving the image's aspect ratio. When preserving the aspect ratio,
    /// a `width` of -1 will cause the image to be scaled to the exact given
    /// height, and a `height` of -1 will cause the image to be scaled to the
    /// exact given width. When not preserving aspect ratio, a `width` or
    /// `height` of -1 means to not scale the image at all in that dimension.
    /// 
    /// The stream is not closed.
    @inlinable init(resourceAtScale resourcePath: UnsafePointer<CChar>!, width: Int, height: Int, preserveAspectRatio: Bool) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gdk_pixbuf_new_from_resource_at_scale(resourcePath, gint(width), gint(height), gboolean((preserveAspectRatio) ? 1 : 0), &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new pixbuf by loading an image from an input stream.
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
        let rv = gdk_pixbuf_new_from_stream(stream.input_stream_ptr, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new pixbuf by loading an image from an input stream.
    /// 
    /// The file format is detected automatically. If `nil` is returned, then
    /// `error` will be set. The `cancellable` can be used to abort the operation
    /// from another thread. If the operation was cancelled, the error
    /// `G_IO_ERROR_CANCELLED` will be returned. Other possible errors are in
    /// the `GDK_PIXBUF_ERROR` and `G_IO_ERROR` domains.
    /// 
    /// The image will be scaled to fit in the requested size, optionally
    /// preserving the image's aspect ratio.
    /// 
    /// When preserving the aspect ratio, a `width` of -1 will cause the image to be
    /// scaled to the exact given height, and a `height` of -1 will cause the image
    /// to be scaled to the exact given width. If both `width` and `height` are
    /// given, this function will behave as if the smaller of the two values
    /// is passed as -1.
    /// 
    /// When not preserving aspect ratio, a `width` or `height` of -1 means to not
    /// scale the image at all in that dimension.
    /// 
    /// The stream is not closed.
    @inlinable init<CancellableT: GIO.CancellableProtocol, InputStreamT: GIO.InputStreamProtocol>(streamAtScale stream: InputStreamT, width: Int, height: Int, preserveAspectRatio: Bool, cancellable: CancellableT?) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gdk_pixbuf_new_from_stream_at_scale(stream.input_stream_ptr, gint(width), gint(height), gboolean((preserveAspectRatio) ? 1 : 0), cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Finishes an asynchronous pixbuf creation operation started with
    /// `gdk_pixbuf_new_from_stream_async()`.
    @inlinable init<AsyncResultT: GIO.AsyncResultProtocol>(streamFinish asyncResult: AsyncResultT) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gdk_pixbuf_new_from_stream_finish(asyncResult.async_result_ptr, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new pixbuf by parsing XPM data in memory.  This data is commonly
    /// the result of including an XPM file into a program's C source.
    @inlinable init(xpmData data: UnsafeMutablePointer<UnsafePointer<CChar>?>!) {
        let rv = gdk_pixbuf_new_from_xpm_data(data)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GdkPixbuf` out of in-memory readonly image data.
    /// Currently only RGB images with 8 bits per sample are supported.
    /// This is the `GBytes` variant of `gdk_pixbuf_new_from_data()`.
    @inlinable static func newFrom<BytesT: GLib.BytesProtocol>(bytes data: BytesT, colorspace: GdkColorspace, hasAlpha: Bool, bitsPerSample: Int, width: Int, height: Int, rowstride: Int) -> PixbufRef! {
        guard let rv = PixbufRef(gconstpointer: gconstpointer(gdk_pixbuf_new_from_bytes(data.bytes_ptr, colorspace, gboolean((hasAlpha) ? 1 : 0), gint(bitsPerSample), gint(width), gint(height), gint(rowstride)))) else { return nil }
        return rv
    }

    /// Creates a new `GdkPixbuf` out of in-memory image data.  Currently only RGB
    /// images with 8 bits per sample are supported.
    /// 
    /// Since you are providing a pre-allocated pixel buffer, you must also
    /// specify a way to free that data.  This is done with a function of
    /// type `GdkPixbufDestroyNotify`.  When a pixbuf created with is
    /// finalized, your destroy notification function will be called, and
    /// it is its responsibility to free the pixel array.
    /// 
    /// See also `gdk_pixbuf_new_from_bytes()`.
    @inlinable static func newFrom(data: UnsafePointer<guchar>!, colorspace: GdkColorspace, hasAlpha: Bool, bitsPerSample: Int, width: Int, height: Int, rowstride: Int, destroyFn: GdkPixbufDestroyNotify? = nil, destroyFnData: gpointer! = nil) -> PixbufRef! {
        guard let rv = PixbufRef(gconstpointer: gconstpointer(gdk_pixbuf_new_from_data(data, colorspace, gboolean((hasAlpha) ? 1 : 0), gint(bitsPerSample), gint(width), gint(height), gint(rowstride), destroyFn, destroyFnData))) else { return nil }
        return rv
    }

    /// Creates a new pixbuf by loading an image from a file.  The file format is
    /// detected automatically. If `nil` is returned, then `error` will be set.
    /// Possible errors are in the `GDK_PIXBUF_ERROR` and `G_FILE_ERROR` domains.
    @inlinable static func newFrom(file filename: UnsafePointer<CChar>!) throws -> PixbufRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = PixbufRef(gconstpointer: gconstpointer(gdk_pixbuf_new_from_file(filename, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Creates a new pixbuf by loading an image from a file.  The file format is
    /// detected automatically. If `nil` is returned, then `error` will be set.
    /// Possible errors are in the `GDK_PIXBUF_ERROR` and `G_FILE_ERROR` domains.
    /// The image will be scaled to fit in the requested size, optionally preserving
    /// the image's aspect ratio.
    /// 
    /// When preserving the aspect ratio, a `width` of -1 will cause the image
    /// to be scaled to the exact given height, and a `height` of -1 will cause
    /// the image to be scaled to the exact given width. When not preserving
    /// aspect ratio, a `width` or `height` of -1 means to not scale the image
    /// at all in that dimension. Negative values for `width` and `height` are
    /// allowed since 2.8.
    @inlinable static func newFrom(fileAtScale filename: UnsafePointer<CChar>!, width: Int, height: Int, preserveAspectRatio: Bool) throws -> PixbufRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = PixbufRef(gconstpointer: gconstpointer(gdk_pixbuf_new_from_file_at_scale(filename, gint(width), gint(height), gboolean((preserveAspectRatio) ? 1 : 0), &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Creates a new pixbuf by loading an image from a file.
    /// The file format is detected automatically. If `nil` is returned, then
    /// `error` will be set. Possible errors are in the `GDK_PIXBUF_ERROR` and
    /// `G_FILE_ERROR` domains.
    /// 
    /// The image will be scaled to fit in the requested size, preserving
    /// the image's aspect ratio. Note that the returned pixbuf may be smaller
    /// than `width` x `height`, if the aspect ratio requires it. To load
    /// and image at the requested size, regardless of aspect ratio, use
    /// `gdk_pixbuf_new_from_file_at_scale()`.
    @inlinable static func newFrom(fileAtSize filename: UnsafePointer<CChar>!, width: Int, height: Int) throws -> PixbufRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = PixbufRef(gconstpointer: gconstpointer(gdk_pixbuf_new_from_file_at_size(filename, gint(width), gint(height), &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Create a `GdkPixbuf` from a flat representation that is suitable for
    /// storing as inline data in a program. This is useful if you want to
    /// ship a program with images, but don't want to depend on any
    /// external files.
    /// 
    /// gdk-pixbuf ships with a program called [gdk-pixbuf-csource](#gdk-pixbuf-csource),
    /// which allows for conversion of `GdkPixbufs` into such a inline representation.
    /// In almost all cases, you should pass the `--raw` option to
    /// `gdk-pixbuf-csource`. A sample invocation would be:
    /// 
    /// ```
    ///  gdk-pixbuf-csource --raw --name=myimage_inline myimage.png
    /// ```
    /// 
    /// For the typical case where the inline pixbuf is read-only static data,
    /// you don't need to copy the pixel data unless you intend to write to
    /// it, so you can pass `false` for `copy_pixels`.  (If you pass `--rle` to
    /// `gdk-pixbuf-csource`, a copy will be made even if `copy_pixels` is `false`,
    /// so using this option is generally a bad idea.)
    /// 
    /// If you create a pixbuf from const inline data compiled into your
    /// program, it's probably safe to ignore errors and disable length checks,
    /// since things will always succeed:
    /// ```
    /// pixbuf = gdk_pixbuf_new_from_inline (-1, myimage_inline, FALSE, NULL);
    /// ```
    /// 
    /// For non-const inline data, you could get out of memory. For untrusted
    /// inline data located at runtime, you could have corrupt inline data in
    /// addition.
    ///
    /// **new_from_inline is deprecated:**
    /// Use #GResource instead.
    @available(*, deprecated) @inlinable static func newFrom(inline dataLength: Int, data: UnsafePointer<guint8>!, copyPixels: Bool) throws -> PixbufRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = PixbufRef(gconstpointer: gconstpointer(gdk_pixbuf_new_from_inline(gint(dataLength), data, gboolean((copyPixels) ? 1 : 0), &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Creates a new pixbuf by loading an image from an resource.
    /// 
    /// The file format is detected automatically. If `nil` is returned, then
    /// `error` will be set.
    @inlinable static func newFrom(resource resourcePath: UnsafePointer<CChar>!) throws -> PixbufRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = PixbufRef(gconstpointer: gconstpointer(gdk_pixbuf_new_from_resource(resourcePath, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Creates a new pixbuf by loading an image from an resource.
    /// 
    /// The file format is detected automatically. If `nil` is returned, then
    /// `error` will be set.
    /// 
    /// The image will be scaled to fit in the requested size, optionally
    /// preserving the image's aspect ratio. When preserving the aspect ratio,
    /// a `width` of -1 will cause the image to be scaled to the exact given
    /// height, and a `height` of -1 will cause the image to be scaled to the
    /// exact given width. When not preserving aspect ratio, a `width` or
    /// `height` of -1 means to not scale the image at all in that dimension.
    /// 
    /// The stream is not closed.
    @inlinable static func newFrom(resourceAtScale resourcePath: UnsafePointer<CChar>!, width: Int, height: Int, preserveAspectRatio: Bool) throws -> PixbufRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = PixbufRef(gconstpointer: gconstpointer(gdk_pixbuf_new_from_resource_at_scale(resourcePath, gint(width), gint(height), gboolean((preserveAspectRatio) ? 1 : 0), &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Creates a new pixbuf by loading an image from an input stream.
    /// 
    /// The file format is detected automatically. If `nil` is returned, then
    /// `error` will be set. The `cancellable` can be used to abort the operation
    /// from another thread. If the operation was cancelled, the error
    /// `G_IO_ERROR_CANCELLED` will be returned. Other possible errors are in
    /// the `GDK_PIXBUF_ERROR` and `G_IO_ERROR` domains.
    /// 
    /// The stream is not closed.
    @inlinable static func newFrom<CancellableT: GIO.CancellableProtocol, InputStreamT: GIO.InputStreamProtocol>(stream: InputStreamT, cancellable: CancellableT?) throws -> PixbufRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = PixbufRef(gconstpointer: gconstpointer(gdk_pixbuf_new_from_stream(stream.input_stream_ptr, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Creates a new pixbuf by loading an image from an input stream.
    /// 
    /// The file format is detected automatically. If `nil` is returned, then
    /// `error` will be set. The `cancellable` can be used to abort the operation
    /// from another thread. If the operation was cancelled, the error
    /// `G_IO_ERROR_CANCELLED` will be returned. Other possible errors are in
    /// the `GDK_PIXBUF_ERROR` and `G_IO_ERROR` domains.
    /// 
    /// The image will be scaled to fit in the requested size, optionally
    /// preserving the image's aspect ratio.
    /// 
    /// When preserving the aspect ratio, a `width` of -1 will cause the image to be
    /// scaled to the exact given height, and a `height` of -1 will cause the image
    /// to be scaled to the exact given width. If both `width` and `height` are
    /// given, this function will behave as if the smaller of the two values
    /// is passed as -1.
    /// 
    /// When not preserving aspect ratio, a `width` or `height` of -1 means to not
    /// scale the image at all in that dimension.
    /// 
    /// The stream is not closed.
    @inlinable static func newFrom<CancellableT: GIO.CancellableProtocol, InputStreamT: GIO.InputStreamProtocol>(streamAtScale stream: InputStreamT, width: Int, height: Int, preserveAspectRatio: Bool, cancellable: CancellableT?) throws -> PixbufRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = PixbufRef(gconstpointer: gconstpointer(gdk_pixbuf_new_from_stream_at_scale(stream.input_stream_ptr, gint(width), gint(height), gboolean((preserveAspectRatio) ? 1 : 0), cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Finishes an asynchronous pixbuf creation operation started with
    /// `gdk_pixbuf_new_from_stream_async()`.
    @inlinable static func newFrom<AsyncResultT: GIO.AsyncResultProtocol>(streamFinish asyncResult: AsyncResultT) throws -> PixbufRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = PixbufRef(gconstpointer: gconstpointer(gdk_pixbuf_new_from_stream_finish(asyncResult.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Creates a new pixbuf by parsing XPM data in memory.  This data is commonly
    /// the result of including an XPM file into a program's C source.
    @inlinable static func newFromXpm(xpmData data: UnsafeMutablePointer<UnsafePointer<CChar>?>!) -> PixbufRef! {
        guard let rv = PixbufRef(gconstpointer: gconstpointer(gdk_pixbuf_new_from_xpm_data(data))) else { return nil }
        return rv
    }
}

/// The `Pixbuf` type acts as a reference-counted owner of an underlying `GdkPixbuf` instance.
/// It provides the methods that can operate on this data type through `PixbufProtocol` conformance.
/// Use `Pixbuf` as a strong reference or owner of a `GdkPixbuf` instance.
///
/// This is the main structure in the gdk-pixbuf library.  It is
/// used to represent images.  It contains information about the
/// image's pixel data, its color space, bits per sample, width and
/// height, and the rowstride (the number of bytes between the start of
/// one row and the start of the next).
open class Pixbuf: GLibObject.Object, PixbufProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Pixbuf` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GdkPixbuf>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Pixbuf` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GdkPixbuf>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Pixbuf` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Pixbuf` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Pixbuf` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GdkPixbuf>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Pixbuf` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GdkPixbuf>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkPixbuf`.
    /// i.e., ownership is transferred to the `Pixbuf` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GdkPixbuf>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `PixbufProtocol`
    /// Will retain `GdkPixbuf`.
    /// - Parameter other: an instance of a related type that implements `PixbufProtocol`
    @inlinable public init<T: PixbufProtocol>(pixbuf other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PixbufProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GdkPixbuf` structure and allocates a buffer for it.  The
    /// buffer has an optimal rowstride.  Note that the buffer is not cleared;
    /// you will have to fill it completely yourself.
    @inlinable public init( colorspace: GdkColorspace, hasAlpha: Bool, bitsPerSample: Int, width: Int, height: Int) {
        let rv = gdk_pixbuf_new(colorspace, gboolean((hasAlpha) ? 1 : 0), gint(bitsPerSample), gint(width), gint(height))
        super.init(gpointer: (rv))
    }

    /// Creates a new `GdkPixbuf` out of in-memory readonly image data.
    /// Currently only RGB images with 8 bits per sample are supported.
    /// This is the `GBytes` variant of `gdk_pixbuf_new_from_data()`.
    @inlinable public init<BytesT: GLib.BytesProtocol>(bytes data: BytesT, colorspace: GdkColorspace, hasAlpha: Bool, bitsPerSample: Int, width: Int, height: Int, rowstride: Int) {
        let rv = gdk_pixbuf_new_from_bytes(data.bytes_ptr, colorspace, gboolean((hasAlpha) ? 1 : 0), gint(bitsPerSample), gint(width), gint(height), gint(rowstride))
        super.init(gpointer: (rv))
    }

    /// Creates a new `GdkPixbuf` out of in-memory image data.  Currently only RGB
    /// images with 8 bits per sample are supported.
    /// 
    /// Since you are providing a pre-allocated pixel buffer, you must also
    /// specify a way to free that data.  This is done with a function of
    /// type `GdkPixbufDestroyNotify`.  When a pixbuf created with is
    /// finalized, your destroy notification function will be called, and
    /// it is its responsibility to free the pixel array.
    /// 
    /// See also `gdk_pixbuf_new_from_bytes()`.
    @inlinable public init(data: UnsafePointer<guchar>!, colorspace: GdkColorspace, hasAlpha: Bool, bitsPerSample: Int, width: Int, height: Int, rowstride: Int, destroyFn: GdkPixbufDestroyNotify? = nil, destroyFnData: gpointer! = nil) {
        let rv = gdk_pixbuf_new_from_data(data, colorspace, gboolean((hasAlpha) ? 1 : 0), gint(bitsPerSample), gint(width), gint(height), gint(rowstride), destroyFn, destroyFnData)
        super.init(gpointer: (rv))
    }

    /// Creates a new pixbuf by loading an image from a file.  The file format is
    /// detected automatically. If `nil` is returned, then `error` will be set.
    /// Possible errors are in the `GDK_PIXBUF_ERROR` and `G_FILE_ERROR` domains.
    @inlinable public init(file filename: UnsafePointer<CChar>!) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gdk_pixbuf_new_from_file(filename, &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: (rv))
    }

    /// Creates a new pixbuf by loading an image from a file.  The file format is
    /// detected automatically. If `nil` is returned, then `error` will be set.
    /// Possible errors are in the `GDK_PIXBUF_ERROR` and `G_FILE_ERROR` domains.
    /// The image will be scaled to fit in the requested size, optionally preserving
    /// the image's aspect ratio.
    /// 
    /// When preserving the aspect ratio, a `width` of -1 will cause the image
    /// to be scaled to the exact given height, and a `height` of -1 will cause
    /// the image to be scaled to the exact given width. When not preserving
    /// aspect ratio, a `width` or `height` of -1 means to not scale the image
    /// at all in that dimension. Negative values for `width` and `height` are
    /// allowed since 2.8.
    @inlinable public init(fileAtScale filename: UnsafePointer<CChar>!, width: Int, height: Int, preserveAspectRatio: Bool) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gdk_pixbuf_new_from_file_at_scale(filename, gint(width), gint(height), gboolean((preserveAspectRatio) ? 1 : 0), &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: (rv))
    }

    /// Creates a new pixbuf by loading an image from a file.
    /// The file format is detected automatically. If `nil` is returned, then
    /// `error` will be set. Possible errors are in the `GDK_PIXBUF_ERROR` and
    /// `G_FILE_ERROR` domains.
    /// 
    /// The image will be scaled to fit in the requested size, preserving
    /// the image's aspect ratio. Note that the returned pixbuf may be smaller
    /// than `width` x `height`, if the aspect ratio requires it. To load
    /// and image at the requested size, regardless of aspect ratio, use
    /// `gdk_pixbuf_new_from_file_at_scale()`.
    @inlinable public init(fileAtSize filename: UnsafePointer<CChar>!, width: Int, height: Int) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gdk_pixbuf_new_from_file_at_size(filename, gint(width), gint(height), &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: (rv))
    }

    /// Create a `GdkPixbuf` from a flat representation that is suitable for
    /// storing as inline data in a program. This is useful if you want to
    /// ship a program with images, but don't want to depend on any
    /// external files.
    /// 
    /// gdk-pixbuf ships with a program called [gdk-pixbuf-csource](#gdk-pixbuf-csource),
    /// which allows for conversion of `GdkPixbufs` into such a inline representation.
    /// In almost all cases, you should pass the `--raw` option to
    /// `gdk-pixbuf-csource`. A sample invocation would be:
    /// 
    /// ```
    ///  gdk-pixbuf-csource --raw --name=myimage_inline myimage.png
    /// ```
    /// 
    /// For the typical case where the inline pixbuf is read-only static data,
    /// you don't need to copy the pixel data unless you intend to write to
    /// it, so you can pass `false` for `copy_pixels`.  (If you pass `--rle` to
    /// `gdk-pixbuf-csource`, a copy will be made even if `copy_pixels` is `false`,
    /// so using this option is generally a bad idea.)
    /// 
    /// If you create a pixbuf from const inline data compiled into your
    /// program, it's probably safe to ignore errors and disable length checks,
    /// since things will always succeed:
    /// ```
    /// pixbuf = gdk_pixbuf_new_from_inline (-1, myimage_inline, FALSE, NULL);
    /// ```
    /// 
    /// For non-const inline data, you could get out of memory. For untrusted
    /// inline data located at runtime, you could have corrupt inline data in
    /// addition.
    ///
    /// **new_from_inline is deprecated:**
    /// Use #GResource instead.
    @available(*, deprecated) @inlinable public init(inline dataLength: Int, data: UnsafePointer<guint8>!, copyPixels: Bool) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gdk_pixbuf_new_from_inline(gint(dataLength), data, gboolean((copyPixels) ? 1 : 0), &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: (rv))
    }

    /// Creates a new pixbuf by loading an image from an resource.
    /// 
    /// The file format is detected automatically. If `nil` is returned, then
    /// `error` will be set.
    @inlinable public init(resource resourcePath: UnsafePointer<CChar>!) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gdk_pixbuf_new_from_resource(resourcePath, &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: (rv))
    }

    /// Creates a new pixbuf by loading an image from an resource.
    /// 
    /// The file format is detected automatically. If `nil` is returned, then
    /// `error` will be set.
    /// 
    /// The image will be scaled to fit in the requested size, optionally
    /// preserving the image's aspect ratio. When preserving the aspect ratio,
    /// a `width` of -1 will cause the image to be scaled to the exact given
    /// height, and a `height` of -1 will cause the image to be scaled to the
    /// exact given width. When not preserving aspect ratio, a `width` or
    /// `height` of -1 means to not scale the image at all in that dimension.
    /// 
    /// The stream is not closed.
    @inlinable public init(resourceAtScale resourcePath: UnsafePointer<CChar>!, width: Int, height: Int, preserveAspectRatio: Bool) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gdk_pixbuf_new_from_resource_at_scale(resourcePath, gint(width), gint(height), gboolean((preserveAspectRatio) ? 1 : 0), &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: (rv))
    }

    /// Creates a new pixbuf by loading an image from an input stream.
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
        let rv = gdk_pixbuf_new_from_stream(stream.input_stream_ptr, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: (rv))
    }

    /// Creates a new pixbuf by loading an image from an input stream.
    /// 
    /// The file format is detected automatically. If `nil` is returned, then
    /// `error` will be set. The `cancellable` can be used to abort the operation
    /// from another thread. If the operation was cancelled, the error
    /// `G_IO_ERROR_CANCELLED` will be returned. Other possible errors are in
    /// the `GDK_PIXBUF_ERROR` and `G_IO_ERROR` domains.
    /// 
    /// The image will be scaled to fit in the requested size, optionally
    /// preserving the image's aspect ratio.
    /// 
    /// When preserving the aspect ratio, a `width` of -1 will cause the image to be
    /// scaled to the exact given height, and a `height` of -1 will cause the image
    /// to be scaled to the exact given width. If both `width` and `height` are
    /// given, this function will behave as if the smaller of the two values
    /// is passed as -1.
    /// 
    /// When not preserving aspect ratio, a `width` or `height` of -1 means to not
    /// scale the image at all in that dimension.
    /// 
    /// The stream is not closed.
    @inlinable public init<CancellableT: GIO.CancellableProtocol, InputStreamT: GIO.InputStreamProtocol>(streamAtScale stream: InputStreamT, width: Int, height: Int, preserveAspectRatio: Bool, cancellable: CancellableT?) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gdk_pixbuf_new_from_stream_at_scale(stream.input_stream_ptr, gint(width), gint(height), gboolean((preserveAspectRatio) ? 1 : 0), cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: (rv))
    }

    /// Finishes an asynchronous pixbuf creation operation started with
    /// `gdk_pixbuf_new_from_stream_async()`.
    @inlinable public init<AsyncResultT: GIO.AsyncResultProtocol>(streamFinish asyncResult: AsyncResultT) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = gdk_pixbuf_new_from_stream_finish(asyncResult.async_result_ptr, &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: (rv))
    }

    /// Creates a new pixbuf by parsing XPM data in memory.  This data is commonly
    /// the result of including an XPM file into a program's C source.
    @inlinable public init(xpmData data: UnsafeMutablePointer<UnsafePointer<CChar>?>!) {
        let rv = gdk_pixbuf_new_from_xpm_data(data)
        super.init(gpointer: (rv))
    }

    /// Creates a new `GdkPixbuf` out of in-memory readonly image data.
    /// Currently only RGB images with 8 bits per sample are supported.
    /// This is the `GBytes` variant of `gdk_pixbuf_new_from_data()`.
    @inlinable public static func newFrom<BytesT: GLib.BytesProtocol>(bytes data: BytesT, colorspace: GdkColorspace, hasAlpha: Bool, bitsPerSample: Int, width: Int, height: Int, rowstride: Int) -> Pixbuf! {
        guard let rv = Pixbuf(gconstpointer: gconstpointer(gdk_pixbuf_new_from_bytes(data.bytes_ptr, colorspace, gboolean((hasAlpha) ? 1 : 0), gint(bitsPerSample), gint(width), gint(height), gint(rowstride)))) else { return nil }
        return rv
    }

    /// Creates a new `GdkPixbuf` out of in-memory image data.  Currently only RGB
    /// images with 8 bits per sample are supported.
    /// 
    /// Since you are providing a pre-allocated pixel buffer, you must also
    /// specify a way to free that data.  This is done with a function of
    /// type `GdkPixbufDestroyNotify`.  When a pixbuf created with is
    /// finalized, your destroy notification function will be called, and
    /// it is its responsibility to free the pixel array.
    /// 
    /// See also `gdk_pixbuf_new_from_bytes()`.
    @inlinable public static func newFrom(data: UnsafePointer<guchar>!, colorspace: GdkColorspace, hasAlpha: Bool, bitsPerSample: Int, width: Int, height: Int, rowstride: Int, destroyFn: GdkPixbufDestroyNotify? = nil, destroyFnData: gpointer! = nil) -> Pixbuf! {
        guard let rv = Pixbuf(gconstpointer: gconstpointer(gdk_pixbuf_new_from_data(data, colorspace, gboolean((hasAlpha) ? 1 : 0), gint(bitsPerSample), gint(width), gint(height), gint(rowstride), destroyFn, destroyFnData))) else { return nil }
        return rv
    }

    /// Creates a new pixbuf by loading an image from a file.  The file format is
    /// detected automatically. If `nil` is returned, then `error` will be set.
    /// Possible errors are in the `GDK_PIXBUF_ERROR` and `G_FILE_ERROR` domains.
    @inlinable public static func newFrom(file filename: UnsafePointer<CChar>!) throws -> Pixbuf! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = Pixbuf(gconstpointer: gconstpointer(gdk_pixbuf_new_from_file(filename, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Creates a new pixbuf by loading an image from a file.  The file format is
    /// detected automatically. If `nil` is returned, then `error` will be set.
    /// Possible errors are in the `GDK_PIXBUF_ERROR` and `G_FILE_ERROR` domains.
    /// The image will be scaled to fit in the requested size, optionally preserving
    /// the image's aspect ratio.
    /// 
    /// When preserving the aspect ratio, a `width` of -1 will cause the image
    /// to be scaled to the exact given height, and a `height` of -1 will cause
    /// the image to be scaled to the exact given width. When not preserving
    /// aspect ratio, a `width` or `height` of -1 means to not scale the image
    /// at all in that dimension. Negative values for `width` and `height` are
    /// allowed since 2.8.
    @inlinable public static func newFrom(fileAtScale filename: UnsafePointer<CChar>!, width: Int, height: Int, preserveAspectRatio: Bool) throws -> Pixbuf! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = Pixbuf(gconstpointer: gconstpointer(gdk_pixbuf_new_from_file_at_scale(filename, gint(width), gint(height), gboolean((preserveAspectRatio) ? 1 : 0), &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Creates a new pixbuf by loading an image from a file.
    /// The file format is detected automatically. If `nil` is returned, then
    /// `error` will be set. Possible errors are in the `GDK_PIXBUF_ERROR` and
    /// `G_FILE_ERROR` domains.
    /// 
    /// The image will be scaled to fit in the requested size, preserving
    /// the image's aspect ratio. Note that the returned pixbuf may be smaller
    /// than `width` x `height`, if the aspect ratio requires it. To load
    /// and image at the requested size, regardless of aspect ratio, use
    /// `gdk_pixbuf_new_from_file_at_scale()`.
    @inlinable public static func newFrom(fileAtSize filename: UnsafePointer<CChar>!, width: Int, height: Int) throws -> Pixbuf! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = Pixbuf(gconstpointer: gconstpointer(gdk_pixbuf_new_from_file_at_size(filename, gint(width), gint(height), &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Create a `GdkPixbuf` from a flat representation that is suitable for
    /// storing as inline data in a program. This is useful if you want to
    /// ship a program with images, but don't want to depend on any
    /// external files.
    /// 
    /// gdk-pixbuf ships with a program called [gdk-pixbuf-csource](#gdk-pixbuf-csource),
    /// which allows for conversion of `GdkPixbufs` into such a inline representation.
    /// In almost all cases, you should pass the `--raw` option to
    /// `gdk-pixbuf-csource`. A sample invocation would be:
    /// 
    /// ```
    ///  gdk-pixbuf-csource --raw --name=myimage_inline myimage.png
    /// ```
    /// 
    /// For the typical case where the inline pixbuf is read-only static data,
    /// you don't need to copy the pixel data unless you intend to write to
    /// it, so you can pass `false` for `copy_pixels`.  (If you pass `--rle` to
    /// `gdk-pixbuf-csource`, a copy will be made even if `copy_pixels` is `false`,
    /// so using this option is generally a bad idea.)
    /// 
    /// If you create a pixbuf from const inline data compiled into your
    /// program, it's probably safe to ignore errors and disable length checks,
    /// since things will always succeed:
    /// ```
    /// pixbuf = gdk_pixbuf_new_from_inline (-1, myimage_inline, FALSE, NULL);
    /// ```
    /// 
    /// For non-const inline data, you could get out of memory. For untrusted
    /// inline data located at runtime, you could have corrupt inline data in
    /// addition.
    ///
    /// **new_from_inline is deprecated:**
    /// Use #GResource instead.
    @available(*, deprecated) @inlinable public static func newFrom(inline dataLength: Int, data: UnsafePointer<guint8>!, copyPixels: Bool) throws -> Pixbuf! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = Pixbuf(gconstpointer: gconstpointer(gdk_pixbuf_new_from_inline(gint(dataLength), data, gboolean((copyPixels) ? 1 : 0), &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Creates a new pixbuf by loading an image from an resource.
    /// 
    /// The file format is detected automatically. If `nil` is returned, then
    /// `error` will be set.
    @inlinable public static func newFrom(resource resourcePath: UnsafePointer<CChar>!) throws -> Pixbuf! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = Pixbuf(gconstpointer: gconstpointer(gdk_pixbuf_new_from_resource(resourcePath, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Creates a new pixbuf by loading an image from an resource.
    /// 
    /// The file format is detected automatically. If `nil` is returned, then
    /// `error` will be set.
    /// 
    /// The image will be scaled to fit in the requested size, optionally
    /// preserving the image's aspect ratio. When preserving the aspect ratio,
    /// a `width` of -1 will cause the image to be scaled to the exact given
    /// height, and a `height` of -1 will cause the image to be scaled to the
    /// exact given width. When not preserving aspect ratio, a `width` or
    /// `height` of -1 means to not scale the image at all in that dimension.
    /// 
    /// The stream is not closed.
    @inlinable public static func newFrom(resourceAtScale resourcePath: UnsafePointer<CChar>!, width: Int, height: Int, preserveAspectRatio: Bool) throws -> Pixbuf! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = Pixbuf(gconstpointer: gconstpointer(gdk_pixbuf_new_from_resource_at_scale(resourcePath, gint(width), gint(height), gboolean((preserveAspectRatio) ? 1 : 0), &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Creates a new pixbuf by loading an image from an input stream.
    /// 
    /// The file format is detected automatically. If `nil` is returned, then
    /// `error` will be set. The `cancellable` can be used to abort the operation
    /// from another thread. If the operation was cancelled, the error
    /// `G_IO_ERROR_CANCELLED` will be returned. Other possible errors are in
    /// the `GDK_PIXBUF_ERROR` and `G_IO_ERROR` domains.
    /// 
    /// The stream is not closed.
    @inlinable public static func newFrom<CancellableT: GIO.CancellableProtocol, InputStreamT: GIO.InputStreamProtocol>(stream: InputStreamT, cancellable: CancellableT?) throws -> Pixbuf! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = Pixbuf(gconstpointer: gconstpointer(gdk_pixbuf_new_from_stream(stream.input_stream_ptr, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Creates a new pixbuf by loading an image from an input stream.
    /// 
    /// The file format is detected automatically. If `nil` is returned, then
    /// `error` will be set. The `cancellable` can be used to abort the operation
    /// from another thread. If the operation was cancelled, the error
    /// `G_IO_ERROR_CANCELLED` will be returned. Other possible errors are in
    /// the `GDK_PIXBUF_ERROR` and `G_IO_ERROR` domains.
    /// 
    /// The image will be scaled to fit in the requested size, optionally
    /// preserving the image's aspect ratio.
    /// 
    /// When preserving the aspect ratio, a `width` of -1 will cause the image to be
    /// scaled to the exact given height, and a `height` of -1 will cause the image
    /// to be scaled to the exact given width. If both `width` and `height` are
    /// given, this function will behave as if the smaller of the two values
    /// is passed as -1.
    /// 
    /// When not preserving aspect ratio, a `width` or `height` of -1 means to not
    /// scale the image at all in that dimension.
    /// 
    /// The stream is not closed.
    @inlinable public static func newFrom<CancellableT: GIO.CancellableProtocol, InputStreamT: GIO.InputStreamProtocol>(streamAtScale stream: InputStreamT, width: Int, height: Int, preserveAspectRatio: Bool, cancellable: CancellableT?) throws -> Pixbuf! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = Pixbuf(gconstpointer: gconstpointer(gdk_pixbuf_new_from_stream_at_scale(stream.input_stream_ptr, gint(width), gint(height), gboolean((preserveAspectRatio) ? 1 : 0), cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Finishes an asynchronous pixbuf creation operation started with
    /// `gdk_pixbuf_new_from_stream_async()`.
    @inlinable public static func newFrom<AsyncResultT: GIO.AsyncResultProtocol>(streamFinish asyncResult: AsyncResultT) throws -> Pixbuf! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = Pixbuf(gconstpointer: gconstpointer(gdk_pixbuf_new_from_stream_finish(asyncResult.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Creates a new pixbuf by parsing XPM data in memory.  This data is commonly
    /// the result of including an XPM file into a program's C source.
    @inlinable public static func newFromXpm(xpmData data: UnsafeMutablePointer<UnsafePointer<CChar>?>!) -> Pixbuf! {
        guard let rv = Pixbuf(gconstpointer: gconstpointer(gdk_pixbuf_new_from_xpm_data(data))) else { return nil }
        return rv
    }

}

public enum PixbufPropertyName: String, PropertyNameProtocol {
    /// The number of bits per sample.
    /// Currently only 8 bit per sample are supported.
    case bitsPerSample = "bits-per-sample"
    case colorspace = "colorspace"
    case hasAlpha = "has-alpha"
    case height = "height"
    /// The number of samples per pixel.
    /// Currently, only 3 or 4 samples per pixel are supported.
    case nChannels = "n-channels"
    case pixelBytes = "pixel-bytes"
    case pixels = "pixels"
    /// The number of bytes between the start of a row and
    /// the start of the next row. This number must (obviously)
    /// be at least as large as the width of the pixbuf.
    case rowstride = "rowstride"
    case width = "width"
}

public extension PixbufProtocol {
    /// Bind a `PixbufPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: PixbufPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a Pixbuf property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: PixbufPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Pixbuf property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: PixbufPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum PixbufSignalName: String, SignalNameProtocol {
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
    /// The number of bits per sample.
    /// Currently only 8 bit per sample are supported.
    case notifyBitsPerSample = "notify::bits-per-sample"
    case notifyColorspace = "notify::colorspace"
    case notifyHasAlpha = "notify::has-alpha"
    case notifyHeight = "notify::height"
    /// The number of samples per pixel.
    /// Currently, only 3 or 4 samples per pixel are supported.
    case notifyNChannels = "notify::n-channels"
    case notifyPixelBytes = "notify::pixel-bytes"
    case notifyPixels = "notify::pixels"
    /// The number of bytes between the start of a row and
    /// the start of the next row. This number must (obviously)
    /// be at least as large as the width of the pixbuf.
    case notifyRowstride = "notify::rowstride"
    case notifyWidth = "notify::width"
}

public extension PixbufProtocol {
    /// Connect a `PixbufSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: PixbufSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: Pixbuf Class: PixbufProtocol extension (methods and fields)
public extension PixbufProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkPixbuf` instance.
    @inlinable var pixbuf_ptr: UnsafeMutablePointer<GdkPixbuf>! { return ptr?.assumingMemoryBound(to: GdkPixbuf.self) }

    /// Takes an existing pixbuf and adds an alpha channel to it.
    /// If the existing pixbuf already had an alpha channel, the channel
    /// values are copied from the original; otherwise, the alpha channel
    /// is initialized to 255 (full opacity).
    /// 
    /// If `substitute_color` is `true`, then the color specified by (`r`, `g`, `b`) will be
    /// assigned zero opacity. That is, if you pass (255, 255, 255) for the
    /// substitute color, all white pixels will become fully transparent.
    @inlinable func addAlpha(substituteColor: Bool, r: guchar, g: guchar, b: guchar) -> PixbufRef! {
        guard let rv = PixbufRef(gconstpointer: gconstpointer(gdk_pixbuf_add_alpha(pixbuf_ptr, gboolean((substituteColor) ? 1 : 0), r, g, b))) else { return nil }
        return rv
    }

    /// Takes an existing pixbuf and checks for the presence of an
    /// associated "orientation" option, which may be provided by the
    /// jpeg loader (which reads the exif orientation tag) or the
    /// tiff loader (which reads the tiff orientation tag, and
    /// compensates it for the partial transforms performed by
    /// libtiff). If an orientation option/tag is present, the
    /// appropriate transform will be performed so that the pixbuf
    /// is oriented correctly.
    @inlinable func applyEmbeddedOrientation() -> PixbufRef! {
        guard let rv = PixbufRef(gconstpointer: gconstpointer(gdk_pixbuf_apply_embedded_orientation(pixbuf_ptr))) else { return nil }
        return rv
    }

    /// Creates a transformation of the source image `src` by scaling by
    /// `scale_x` and `scale_y` then translating by `offset_x` and `offset_y`.
    /// This gives an image in the coordinates of the destination pixbuf.
    /// The rectangle (`dest_x`, `dest_y`, `dest_width`, `dest_height`)
    /// is then alpha blended onto the corresponding rectangle of the
    /// original destination image.
    /// 
    /// When the destination rectangle contains parts not in the source
    /// image, the data at the edges of the source image is replicated
    /// to infinity.
    /// 
    /// ![](composite.png)
    @inlinable func composite<PixbufT: PixbufProtocol>(dest: PixbufT, destX: Int, destY: Int, destWidth: Int, destHeight: Int, offsetX: CDouble, offsetY: CDouble, scaleX: CDouble, scaleY: CDouble, interpType: GdkInterpType, overallAlpha: Int) {
        gdk_pixbuf_composite(pixbuf_ptr, dest.pixbuf_ptr, gint(destX), gint(destY), gint(destWidth), gint(destHeight), offsetX, offsetY, scaleX, scaleY, interpType, gint(overallAlpha))
    
    }

    /// Creates a transformation of the source image `src` by scaling by
    /// `scale_x` and `scale_y` then translating by `offset_x` and `offset_y`,
    /// then alpha blends the rectangle (`dest_x` ,`dest_y`, `dest_width`,
    /// `dest_height`) of the resulting image with a checkboard of the
    /// colors `color1` and `color2` and renders it onto the destination
    /// image.
    /// 
    /// If the source image has no alpha channel, and `overall_alpha` is 255, a fast
    /// path is used which omits the alpha blending and just performs the scaling.
    /// 
    /// See `gdk_pixbuf_composite_color_simple()` for a simpler variant of this
    /// function suitable for many tasks.
    @inlinable func compositeColor<PixbufT: PixbufProtocol>(dest: PixbufT, destX: Int, destY: Int, destWidth: Int, destHeight: Int, offsetX: CDouble, offsetY: CDouble, scaleX: CDouble, scaleY: CDouble, interpType: GdkInterpType, overallAlpha: Int, checkX: Int, checkY: Int, checkSize: Int, color1: guint32, color2: guint32) {
        gdk_pixbuf_composite_color(pixbuf_ptr, dest.pixbuf_ptr, gint(destX), gint(destY), gint(destWidth), gint(destHeight), offsetX, offsetY, scaleX, scaleY, interpType, gint(overallAlpha), gint(checkX), gint(checkY), gint(checkSize), color1, color2)
    
    }

    /// Creates a new `GdkPixbuf` by scaling `src` to `dest_width` x
    /// `dest_height` and alpha blending the result with a checkboard of colors
    /// `color1` and `color2`.
    @inlinable func compositeColorSimple(destWidth: Int, destHeight: Int, interpType: GdkInterpType, overallAlpha: Int, checkSize: Int, color1: guint32, color2: guint32) -> PixbufRef! {
        guard let rv = PixbufRef(gconstpointer: gconstpointer(gdk_pixbuf_composite_color_simple(pixbuf_ptr, gint(destWidth), gint(destHeight), interpType, gint(overallAlpha), gint(checkSize), color1, color2))) else { return nil }
        return rv
    }

    /// Creates a new `GdkPixbuf` with a copy of the information in the specified
    /// `pixbuf`. Note that this does not copy the options set on the original `GdkPixbuf`,
    /// use `gdk_pixbuf_copy_options()` for this.
    @inlinable func copy() -> PixbufRef! {
        guard let rv = PixbufRef(gconstpointer: gconstpointer(gdk_pixbuf_copy(pixbuf_ptr))) else { return nil }
        return rv
    }

    /// Copies a rectangular area from `src_pixbuf` to `dest_pixbuf`.  Conversion of
    /// pixbuf formats is done automatically.
    /// 
    /// If the source rectangle overlaps the destination rectangle on the
    /// same pixbuf, it will be overwritten during the copy operation.
    /// Therefore, you can not use this function to scroll a pixbuf.
    @inlinable func copyArea<PixbufT: PixbufProtocol>(srcX: Int, srcY: Int, width: Int, height: Int, destPixbuf: PixbufT, destX: Int, destY: Int) {
        gdk_pixbuf_copy_area(pixbuf_ptr, gint(srcX), gint(srcY), gint(width), gint(height), destPixbuf.pixbuf_ptr, gint(destX), gint(destY))
    
    }

    /// Copy the key/value pair options attached to a `GdkPixbuf` to another.
    /// This is useful to keep original metadata after having manipulated
    /// a file. However be careful to remove metadata which you've already
    /// applied, such as the "orientation" option after rotating the image.
    @inlinable func copyOptions<PixbufT: PixbufProtocol>(destPixbuf: PixbufT) -> Bool {
        let rv = ((gdk_pixbuf_copy_options(pixbuf_ptr, destPixbuf.pixbuf_ptr)) != 0)
        return rv
    }

    /// Clears a pixbuf to the given RGBA value, converting the RGBA value into
    /// the pixbuf's pixel format. The alpha will be ignored if the pixbuf
    /// doesn't have an alpha channel.
    @inlinable func fill(pixel: guint32) {
        gdk_pixbuf_fill(pixbuf_ptr, pixel)
    
    }

    /// Flips a pixbuf horizontally or vertically and returns the
    /// result in a new pixbuf.
    @inlinable func flip(horizontal: Bool) -> PixbufRef! {
        guard let rv = PixbufRef(gconstpointer: gconstpointer(gdk_pixbuf_flip(pixbuf_ptr, gboolean((horizontal) ? 1 : 0)))) else { return nil }
        return rv
    }

    /// Queries the number of bits per color sample in a pixbuf.
    @inlinable func getBitsPerSample() -> Int {
        let rv = Int(gdk_pixbuf_get_bits_per_sample(pixbuf_ptr))
        return rv
    }

    /// Returns the length of the pixel data, in bytes.
    @inlinable func getByteLength() -> Int {
        let rv = Int(gdk_pixbuf_get_byte_length(pixbuf_ptr))
        return rv
    }

    /// Queries the color space of a pixbuf.
    @inlinable func getColorspace() -> GdkColorspace {
        let rv = gdk_pixbuf_get_colorspace(pixbuf_ptr)
        return rv
    }

    /// Queries whether a pixbuf has an alpha channel (opacity information).
    @inlinable func getHasAlpha() -> Bool {
        let rv = ((gdk_pixbuf_get_has_alpha(pixbuf_ptr)) != 0)
        return rv
    }

    /// Queries the height of a pixbuf.
    @inlinable func getHeight() -> Int {
        let rv = Int(gdk_pixbuf_get_height(pixbuf_ptr))
        return rv
    }

    /// Queries the number of channels of a pixbuf.
    @inlinable func getNChannels() -> Int {
        let rv = Int(gdk_pixbuf_get_n_channels(pixbuf_ptr))
        return rv
    }

    /// Looks up `key` in the list of options that may have been attached to the
    /// `pixbuf` when it was loaded, or that may have been attached by another
    /// function using `gdk_pixbuf_set_option()`.
    /// 
    /// For instance, the ANI loader provides "Title" and "Artist" options.
    /// The ICO, XBM, and XPM loaders provide "x_hot" and "y_hot" hot-spot
    /// options for cursor definitions. The PNG loader provides the tEXt ancillary
    /// chunk key/value pairs as options. Since 2.12, the TIFF and JPEG loaders
    /// return an "orientation" option string that corresponds to the embedded
    /// TIFF/Exif orientation tag (if present). Since 2.32, the TIFF loader sets
    /// the "multipage" option string to "yes" when a multi-page TIFF is loaded.
    /// Since 2.32 the JPEG and PNG loaders set "x-dpi" and "y-dpi" if the file
    /// contains image density information in dots per inch.
    /// Since 2.36.6, the JPEG loader sets the "comment" option with the comment
    /// EXIF tag.
    @inlinable func getOption(key: UnsafePointer<gchar>!) -> String! {
        let rv = gdk_pixbuf_get_option(pixbuf_ptr, key).map({ String(cString: $0) })
        return rv
    }

    /// Returns a `GHashTable` with a list of all the options that may have been
    /// attached to the `pixbuf` when it was loaded, or that may have been
    /// attached by another function using `gdk_pixbuf_set_option()`.
    /// 
    /// See `gdk_pixbuf_get_option()` for more details.
    @inlinable func getOptions() -> GLib.HashTableRef! {
        let rv = GLib.HashTableRef(gdk_pixbuf_get_options(pixbuf_ptr))
        return rv
    }

    /// Queries a pointer to the pixel data of a pixbuf.
    @inlinable func getPixels() -> String! {
        let rv = gdk_pixbuf_get_pixels(pixbuf_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Queries a pointer to the pixel data of a pixbuf.
    @inlinable func getPixelsWith(length: UnsafeMutablePointer<guint>!) -> String! {
        let rv = gdk_pixbuf_get_pixels_with_length(pixbuf_ptr, length).map({ String(cString: $0) })
        return rv
    }

    /// Queries the rowstride of a pixbuf, which is the number of bytes between
    /// the start of a row and the start of the next row.
    @inlinable func getRowstride() -> Int {
        let rv = Int(gdk_pixbuf_get_rowstride(pixbuf_ptr))
        return rv
    }

    /// Queries the width of a pixbuf.
    @inlinable func getWidth() -> Int {
        let rv = Int(gdk_pixbuf_get_width(pixbuf_ptr))
        return rv
    }

    /// Creates a new pixbuf which represents a sub-region of `src_pixbuf`.
    /// The new pixbuf shares its pixels with the original pixbuf, so
    /// writing to one affects both.  The new pixbuf holds a reference to
    /// `src_pixbuf`, so `src_pixbuf` will not be finalized until the new
    /// pixbuf is finalized.
    /// 
    /// Note that if `src_pixbuf` is read-only, this function will force it
    /// to be mutable.
    @inlinable func newSubpixbuf(srcX: Int, srcY: Int, width: Int, height: Int) -> PixbufRef! {
        guard let rv = PixbufRef(gconstpointer: gconstpointer(gdk_pixbuf_new_subpixbuf(pixbuf_ptr, gint(srcX), gint(srcY), gint(width), gint(height)))) else { return nil }
        return rv
    }

    /// Provides a `GBytes` buffer containing the raw pixel data; the data
    /// must not be modified.  This function allows skipping the implicit
    /// copy that must be made if `gdk_pixbuf_get_pixels()` is called on a
    /// read-only pixbuf.
    @inlinable func readPixelBytes() -> GLib.BytesRef! {
        let rv = GLib.BytesRef(gdk_pixbuf_read_pixel_bytes(pixbuf_ptr))
        return rv
    }

    /// Provides a read-only pointer to the raw pixel data; must not be
    /// modified.  This function allows skipping the implicit copy that
    /// must be made if `gdk_pixbuf_get_pixels()` is called on a read-only
    /// pixbuf.
    @inlinable func readPixels() -> UnsafePointer<guint8>! {
        let rv = gdk_pixbuf_read_pixels(pixbuf_ptr)
        return rv
    }

    /// Adds a reference to a pixbuf.
    ///
    /// **ref is deprecated:**
    /// Use g_object_ref().
    @available(*, deprecated) @discardableResult @inlinable func ref() -> PixbufRef! {
        guard let rv = PixbufRef(gconstpointer: gconstpointer(g_object_ref(pixbuf_ptr))) else { return nil }
        return rv
    }

    /// Remove the key/value pair option attached to a `GdkPixbuf`.
    @inlinable func removeOption(key: UnsafePointer<gchar>!) -> Bool {
        let rv = ((gdk_pixbuf_remove_option(pixbuf_ptr, key)) != 0)
        return rv
    }

    /// Rotates a pixbuf by a multiple of 90 degrees, and returns the
    /// result in a new pixbuf.
    /// 
    /// If `angle` is 0, a copy of `src` is returned, avoiding any rotation.
    @inlinable func rotateSimple(angle: GdkPixbufRotation) -> PixbufRef! {
        guard let rv = PixbufRef(gconstpointer: gconstpointer(gdk_pixbuf_rotate_simple(pixbuf_ptr, angle))) else { return nil }
        return rv
    }

    /// Modifies saturation and optionally pixelates `src`, placing the result in
    /// `dest`. `src` and `dest` may be the same pixbuf with no ill effects.  If
    /// `saturation` is 1.0 then saturation is not changed. If it's less than 1.0,
    /// saturation is reduced (the image turns toward grayscale); if greater than
    /// 1.0, saturation is increased (the image gets more vivid colors). If `pixelate`
    /// is `true`, then pixels are faded in a checkerboard pattern to create a
    /// pixelated image. `src` and `dest` must have the same image format, size, and
    /// rowstride.
    @inlinable func saturateAndPixelate<PixbufT: PixbufProtocol>(dest: PixbufT, saturation: Double, pixelate: Bool) {
        gdk_pixbuf_saturate_and_pixelate(pixbuf_ptr, dest.pixbuf_ptr, gfloat(saturation), gboolean((pixelate) ? 1 : 0))
    
    }


    // *** save() is not available because it has a varargs (...) parameter!



    // *** saveToBuffer() is not available because it has a varargs (...) parameter!


    /// Saves pixbuf to a new buffer in format `type`, which is currently "jpeg",
    /// "tiff", "png", "ico" or "bmp".  See `gdk_pixbuf_save_to_buffer()`
    /// for more details.
    @inlinable func saveToBufferv(buffer: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>!, bufferSize: UnsafeMutablePointer<gsize>!, type: UnsafePointer<CChar>!, optionKeys: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!, optionValues: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gdk_pixbuf_save_to_bufferv(pixbuf_ptr, buffer, bufferSize, type, optionKeys, optionValues, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }


    // *** saveToCallback() is not available because it has a varargs (...) parameter!


    /// Saves pixbuf to a callback in format `type`, which is currently "jpeg",
    /// "png", "tiff", "ico" or "bmp".  If `error` is set, `false` will be returned. See
    /// gdk_pixbuf_save_to_callback () for more details.
    @inlinable func saveToCallbackv(saveFunc: GdkPixbufSaveFunc?, userData: gpointer! = nil, type: UnsafePointer<CChar>!, optionKeys: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!, optionValues: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gdk_pixbuf_save_to_callbackv(pixbuf_ptr, saveFunc, userData, type, optionKeys, optionValues, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }


    // *** saveToStream() is not available because it has a varargs (...) parameter!



    // *** saveToStreamAsync() is not available because it has a varargs (...) parameter!


    /// Saves `pixbuf` to an output stream.
    /// 
    /// Supported file formats are currently "jpeg", "tiff", "png", "ico" or
    /// "bmp". See `gdk_pixbuf_save_to_stream()` for more details.
    @inlinable func saveToStreamv<OutputStreamT: GIO.OutputStreamProtocol>(stream: OutputStreamT, type: UnsafePointer<CChar>!, optionKeys: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!, optionValues: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!, cancellable: GIO.CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gdk_pixbuf_save_to_streamv(pixbuf_ptr, stream.output_stream_ptr, type, optionKeys, optionValues, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Saves `pixbuf` to an output stream.
    /// 
    /// Supported file formats are currently "jpeg", "tiff", "png", "ico" or
    /// "bmp". See `gdk_pixbuf_save_to_stream()` for more details.
    @inlinable func saveToStreamv<CancellableT: GIO.CancellableProtocol, OutputStreamT: GIO.OutputStreamProtocol>(stream: OutputStreamT, type: UnsafePointer<CChar>!, optionKeys: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!, optionValues: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!, cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gdk_pixbuf_save_to_streamv(pixbuf_ptr, stream.output_stream_ptr, type, optionKeys, optionValues, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Saves `pixbuf` to an output stream asynchronously.
    /// 
    /// For more details see `gdk_pixbuf_save_to_streamv()`, which is the synchronous
    /// version of this function.
    /// 
    /// When the operation is finished, `callback` will be called in the main thread.
    /// You can then call `gdk_pixbuf_save_to_stream_finish()` to get the result of the operation.
    @inlinable func saveToStreamvAsync<OutputStreamT: GIO.OutputStreamProtocol>(stream: OutputStreamT, type: UnsafePointer<gchar>!, optionKeys: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>!, optionValues: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>!, cancellable: GIO.CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        gdk_pixbuf_save_to_streamv_async(pixbuf_ptr, stream.output_stream_ptr, type, optionKeys, optionValues, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Saves `pixbuf` to an output stream asynchronously.
    /// 
    /// For more details see `gdk_pixbuf_save_to_streamv()`, which is the synchronous
    /// version of this function.
    /// 
    /// When the operation is finished, `callback` will be called in the main thread.
    /// You can then call `gdk_pixbuf_save_to_stream_finish()` to get the result of the operation.
    @inlinable func saveToStreamvAsync<CancellableT: GIO.CancellableProtocol, OutputStreamT: GIO.OutputStreamProtocol>(stream: OutputStreamT, type: UnsafePointer<gchar>!, optionKeys: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>!, optionValues: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>!, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        gdk_pixbuf_save_to_streamv_async(pixbuf_ptr, stream.output_stream_ptr, type, optionKeys, optionValues, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Saves pixbuf to a file in `type`, which is currently "jpeg", "png", "tiff", "ico" or "bmp".
    /// If `error` is set, `false` will be returned.
    /// See gdk_pixbuf_save () for more details.
    @inlinable func savev(filename: UnsafePointer<CChar>!, type: UnsafePointer<CChar>!, optionKeys: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!, optionValues: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gdk_pixbuf_savev(pixbuf_ptr, filename, type, optionKeys, optionValues, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Creates a transformation of the source image `src` by scaling by
    /// `scale_x` and `scale_y` then translating by `offset_x` and `offset_y`,
    /// then renders the rectangle (`dest_x`, `dest_y`, `dest_width`,
    /// `dest_height`) of the resulting image onto the destination image
    /// replacing the previous contents.
    /// 
    /// Try to use `gdk_pixbuf_scale_simple()` first, this function is
    /// the industrial-strength power tool you can fall back to if
    /// `gdk_pixbuf_scale_simple()` isn't powerful enough.
    /// 
    /// If the source rectangle overlaps the destination rectangle on the
    /// same pixbuf, it will be overwritten during the scaling which
    /// results in rendering artifacts.
    @inlinable func scale<PixbufT: PixbufProtocol>(dest: PixbufT, destX: Int, destY: Int, destWidth: Int, destHeight: Int, offsetX: CDouble, offsetY: CDouble, scaleX: CDouble, scaleY: CDouble, interpType: GdkInterpType) {
        gdk_pixbuf_scale(pixbuf_ptr, dest.pixbuf_ptr, gint(destX), gint(destY), gint(destWidth), gint(destHeight), offsetX, offsetY, scaleX, scaleY, interpType)
    
    }

    /// Create a new `GdkPixbuf` containing a copy of `src` scaled to
    /// `dest_width` x `dest_height`. Leaves `src` unaffected.  `interp_type`
    /// should be `GDK_INTERP_NEAREST` if you want maximum speed (but when
    /// scaling down `GDK_INTERP_NEAREST` is usually unusably ugly).  The
    /// default `interp_type` should be `GDK_INTERP_BILINEAR` which offers
    /// reasonable quality and speed.
    /// 
    /// You can scale a sub-portion of `src` by creating a sub-pixbuf
    /// pointing into `src`; see `gdk_pixbuf_new_subpixbuf()`.
    /// 
    /// If `dest_width` and `dest_height` are equal to the `src` width and height, a
    /// copy of `src` is returned, avoiding any scaling.
    /// 
    /// For more complicated scaling/alpha blending see `gdk_pixbuf_scale()`
    /// and `gdk_pixbuf_composite()`.
    @inlinable func scaleSimple(destWidth: Int, destHeight: Int, interpType: GdkInterpType) -> PixbufRef! {
        guard let rv = PixbufRef(gconstpointer: gconstpointer(gdk_pixbuf_scale_simple(pixbuf_ptr, gint(destWidth), gint(destHeight), interpType))) else { return nil }
        return rv
    }

    /// Attaches a key/value pair as an option to a `GdkPixbuf`. If `key` already
    /// exists in the list of options attached to `pixbuf`, the new value is
    /// ignored and `false` is returned.
    @inlinable func setOption(key: UnsafePointer<gchar>!, value: UnsafePointer<gchar>!) -> Bool {
        let rv = ((gdk_pixbuf_set_option(pixbuf_ptr, key, value)) != 0)
        return rv
    }

    /// Removes a reference from a pixbuf.
    ///
    /// **unref is deprecated:**
    /// Use g_object_unref().
    @available(*, deprecated) @inlinable func unref() {
        g_object_unref(pixbuf_ptr)
    
    }
    /// Queries the number of bits per color sample in a pixbuf.
    @inlinable var bitsPerSample: Int {
        /// Queries the number of bits per color sample in a pixbuf.
        get {
            let rv = Int(gdk_pixbuf_get_bits_per_sample(pixbuf_ptr))
            return rv
        }
    }

    /// Returns the length of the pixel data, in bytes.
    @inlinable var byteLength: Int {
        /// Returns the length of the pixel data, in bytes.
        get {
            let rv = Int(gdk_pixbuf_get_byte_length(pixbuf_ptr))
            return rv
        }
    }

    @inlinable var colorspace: GdkColorspace {
        /// Queries the color space of a pixbuf.
        get {
            let rv = gdk_pixbuf_get_colorspace(pixbuf_ptr)
            return rv
        }
    }

    /// Queries whether a pixbuf has an alpha channel (opacity information).
    @inlinable var hasAlpha: Bool {
        /// Queries whether a pixbuf has an alpha channel (opacity information).
        get {
            let rv = ((gdk_pixbuf_get_has_alpha(pixbuf_ptr)) != 0)
            return rv
        }
    }

    @inlinable var height: Int {
        /// Queries the height of a pixbuf.
        get {
            let rv = Int(gdk_pixbuf_get_height(pixbuf_ptr))
            return rv
        }
    }

    /// Queries the number of channels of a pixbuf.
    @inlinable var nChannels: Int {
        /// Queries the number of channels of a pixbuf.
        get {
            let rv = Int(gdk_pixbuf_get_n_channels(pixbuf_ptr))
            return rv
        }
    }

    /// Returns a `GHashTable` with a list of all the options that may have been
    /// attached to the `pixbuf` when it was loaded, or that may have been
    /// attached by another function using `gdk_pixbuf_set_option()`.
    /// 
    /// See `gdk_pixbuf_get_option()` for more details.
    @inlinable var options: GLib.HashTableRef! {
        /// Returns a `GHashTable` with a list of all the options that may have been
        /// attached to the `pixbuf` when it was loaded, or that may have been
        /// attached by another function using `gdk_pixbuf_set_option()`.
        /// 
        /// See `gdk_pixbuf_get_option()` for more details.
        get {
            let rv = GLib.HashTableRef(gdk_pixbuf_get_options(pixbuf_ptr))
            return rv
        }
    }

    @inlinable var pixels: String! {
        /// Queries a pointer to the pixel data of a pixbuf.
        get {
            let rv = gdk_pixbuf_get_pixels(pixbuf_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// The number of bytes between the start of a row and
    /// the start of the next row. This number must (obviously)
    /// be at least as large as the width of the pixbuf.
    @inlinable var rowstride: Int {
        /// Queries the rowstride of a pixbuf, which is the number of bytes between
        /// the start of a row and the start of the next row.
        get {
            let rv = Int(gdk_pixbuf_get_rowstride(pixbuf_ptr))
            return rv
        }
    }

    @inlinable var width: Int {
        /// Queries the width of a pixbuf.
        get {
            let rv = Int(gdk_pixbuf_get_width(pixbuf_ptr))
            return rv
        }
    }


}



