import CGLib
import CGdkPixbuf
import GLib
import GIO
import GModule
import GLibObject

/// This enumeration defines the color spaces that are supported by
/// the gdk-pixbuf library.  Currently only RGB is supported.
public typealias Colorspace = GdkColorspace

public extension Colorspace {
    /// Indicates a red/green/blue additive color space.
    static let rgb = GDK_COLORSPACE_RGB /* 0 */
}

/// This enumeration describes the different interpolation modes that
/// can be used with the scaling functions. `GDK_INTERP_NEAREST` is
/// the fastest scaling method, but has horrible quality when
/// scaling down. `GDK_INTERP_BILINEAR` is the best choice if you
/// aren't sure what to choose, it has a good speed/quality balance.
/// 
/// **Note**: Cubic filtering is missing from the list; hyperbolic
/// interpolation is just as fast and results in higher quality.
public typealias InterpType = GdkInterpType

public extension InterpType {
    /// Nearest neighbor sampling; this is the fastest
    ///  and lowest quality mode. Quality is normally unacceptable when scaling
    ///  down, but may be OK when scaling up.
    static let nearest = GDK_INTERP_NEAREST /* 0 */
    /// This is an accurate simulation of the PostScript
    ///  image operator without any interpolation enabled.  Each pixel is
    ///  rendered as a tiny parallelogram of solid color, the edges of which
    ///  are implemented with antialiasing.  It resembles nearest neighbor for
    ///  enlargement, and bilinear for reduction.
    static let tiles = GDK_INTERP_TILES /* 1 */
    /// Best quality/speed balance; use this mode by
    ///  default. Bilinear interpolation.  For enlargement, it is
    ///  equivalent to point-sampling the ideal bilinear-interpolated image.
    ///  For reduction, it is equivalent to laying down small tiles and
    ///  integrating over the coverage area.
    static let bilinear = GDK_INTERP_BILINEAR /* 2 */
    /// This is the slowest and highest quality
    ///  reconstruction function. It is derived from the hyperbolic filters in
    ///  Wolberg's "Digital Image Warping", and is formally defined as the
    ///  hyperbolic-filter sampling the ideal hyperbolic-filter interpolated
    ///  image (the filter is designed to be idempotent for 1:1 pixel mapping).
    ///  **Deprecated**: this interpolation filter is deprecated, as in reality
    ///  it has a lower quality than the `GDK_INTERP_BILINEAR` filter
    ///  (Since: 2.38)
    static let hyper = GDK_INTERP_HYPER /* 3 */
}

/// These values can be passed to
/// gdk_pixbuf_xlib_render_to_drawable_alpha() to control how the alpha
/// channel of an image should be handled.  This function can create a
/// bilevel clipping mask (black and white) and use it while painting
/// the image.  In the future, when the X Window System gets an alpha
/// channel extension, it will be possible to do full alpha
/// compositing onto arbitrary drawables.  For now both cases fall
/// back to a bilevel clipping mask.
public typealias PixbufAlphaMode = GdkPixbufAlphaMode

public extension PixbufAlphaMode {
    /// A bilevel clipping mask (black and white)
    ///  will be created and used to draw the image.  Pixels below 0.5 opacity
    ///  will be considered fully transparent, and all others will be
    ///  considered fully opaque.
    static let bilevel = GDK_PIXBUF_ALPHA_BILEVEL /* 0 */
    /// For now falls back to `GDK_PIXBUF_ALPHA_BILEVEL`.
    ///  In the future it will do full alpha compositing.
    static let full = GDK_PIXBUF_ALPHA_FULL /* 1 */
}

/// An error code in the `GDK_PIXBUF_ERROR` domain. Many gdk-pixbuf
/// operations can cause errors in this domain, or in the `G_FILE_ERROR`
/// domain.
public typealias PixbufError = GdkPixbufError

public extension PixbufError {
    /// An image file was broken somehow.
    static let corrupt_image = GDK_PIXBUF_ERROR_CORRUPT_IMAGE /* 0 */
    /// Not enough memory.
    static let insufficient_memory = GDK_PIXBUF_ERROR_INSUFFICIENT_MEMORY /* 1 */
    /// A bad option was passed to a pixbuf save module.
    static let bad_option = GDK_PIXBUF_ERROR_BAD_OPTION /* 2 */
    /// Unknown image type.
    static let unknown_type = GDK_PIXBUF_ERROR_UNKNOWN_TYPE /* 3 */
    /// Don't know how to perform the
    ///  given operation on the type of image at hand.
    static let unsupported_operation = GDK_PIXBUF_ERROR_UNSUPPORTED_OPERATION /* 4 */
    /// Generic failure code, something went wrong.
    static let failed = GDK_PIXBUF_ERROR_FAILED /* 5 */
    /// Only part of the animation was loaded.
    static let incomplete_animation = GDK_PIXBUF_ERROR_INCOMPLETE_ANIMATION /* 6 */
}

/// The possible rotations which can be passed to gdk_pixbuf_rotate_simple().
/// To make them easier to use, their numerical values are the actual degrees.
public typealias PixbufRotation = GdkPixbufRotation

public extension PixbufRotation {
    /// No rotation.
    static let none_ = GDK_PIXBUF_ROTATE_NONE /* 0 */
    /// Rotate by 90 degrees.
    static let counterclockwise = GDK_PIXBUF_ROTATE_COUNTERCLOCKWISE /* 90 */
    /// Rotate by 180 degrees.
    static let upsidedown = GDK_PIXBUF_ROTATE_UPSIDEDOWN /* 180 */
    /// Rotate by 270 degrees.
    static let clockwise = GDK_PIXBUF_ROTATE_CLOCKWISE /* 270 */
}
