import CGdkPixbuf
import GLib
import GIO

public extension GdkPixbuf {
    typealias PixbufDestroyNotify = GdkPixbufDestroyNotify
    typealias PixbufModuleFillInfoFunc = GdkPixbufModuleFillInfoFunc
    typealias PixbufModuleFillVtableFunc = GdkPixbufModuleFillVtableFunc
    typealias PixbufModulePreparedFunc = GdkPixbufModulePreparedFunc
    typealias PixbufModuleSizeFunc = GdkPixbufModuleSizeFunc
    typealias PixbufModuleUpdatedFunc = GdkPixbufModuleUpdatedFunc
    typealias PixbufSaveFunc = GdkPixbufSaveFunc
    typealias Colorspace = GdkColorspace
    typealias InterpType = GdkInterpType
    typealias PixbufAlphaMode = GdkPixbufAlphaMode
    typealias PixbufError = GdkPixbufError
    typealias PixbufRotation = GdkPixbufRotation
    typealias GdkPixbufSimpleAnimIter = GdkPixbufAnimationIter
}
