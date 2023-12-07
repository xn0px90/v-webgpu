module webgpu

//#include "webgpu.h"

type Size_t = u32
type Wchar_t = int
type WGPUFlags = u32
type WGPUBool = u32
type WGPUAdapter = voidptr
type WGPUBindGroup = voidptr
type WGPUBindGroupLayout = voidptr
type WGPUBuffer = voidptr
type WGPUCommandBuffer = voidptr
type WGPUCommandEncoder = voidptr
type WGPUComputePassEncoder = voidptr
type WGPUComputePipeline = voidptr
type WGPUDevice = voidptr
type WGPUInstance = voidptr
type WGPUPipelineLayout = voidptr
type WGPUQuerySet = voidptr
type WGPUQueue = voidptr
type WGPURenderBundle = voidptr
type WGPURenderBundleEncoder = voidptr
type WGPURenderPassEncoder = voidptr
type WGPURenderPipeline = voidptr
type WGPUSampler = voidptr
type WGPUShaderModule = voidptr
type WGPUSurface = voidptr
type WGPUTexture = voidptr
type WGPUTextureView = voidptr

enum WGPUAdapterType {
	wgpuadaptertype_discretegpu   = 0
	wgpuadaptertype_integratedgpu = 1
	wgpuadaptertype_cpu           = 2
	wgpuadaptertype_unknown       = 3
	wgpuadaptertype_force32       = 2147483647
}

enum WGPUAddressMode {
	wgpuaddressmode_repeat       = 0
	wgpuaddressmode_mirrorrepeat = 1
	wgpuaddressmode_clamptoedge  = 2
	wgpuaddressmode_force32      = 2147483647
}

enum WGPUBackendType {
	wgpubackendtype_undefined = 0
	wgpubackendtype_null      = 1
	wgpubackendtype_webgpu    = 2
	wgpubackendtype_d3d11     = 3
	wgpubackendtype_d3d12     = 4
	wgpubackendtype_metal     = 5
	wgpubackendtype_vulkan    = 6
	wgpubackendtype_opengl    = 7
	wgpubackendtype_opengles  = 8
	wgpubackendtype_force32   = 2147483647
}

enum WGPUBlendFactor {
	wgpublendfactor_zero              = 0
	wgpublendfactor_one               = 1
	wgpublendfactor_src               = 2
	wgpublendfactor_oneminussrc       = 3
	wgpublendfactor_srcalpha          = 4
	wgpublendfactor_oneminussrcalpha  = 5
	wgpublendfactor_dst               = 6
	wgpublendfactor_oneminusdst       = 7
	wgpublendfactor_dstalpha          = 8
	wgpublendfactor_oneminusdstalpha  = 9
	wgpublendfactor_srcalphasaturated = 10
	wgpublendfactor_constant          = 11
	wgpublendfactor_oneminusconstant  = 12
	wgpublendfactor_force32           = 2147483647
}

enum WGPUBlendOperation {
	wgpublendoperation_add             = 0
	wgpublendoperation_subtract        = 1
	wgpublendoperation_reversesubtract = 2
	wgpublendoperation_min             = 3
	wgpublendoperation_max             = 4
	wgpublendoperation_force32         = 2147483647
}

enum WGPUBufferBindingType {
	wgpubufferbindingtype_undefined       = 0
	wgpubufferbindingtype_uniform         = 1
	wgpubufferbindingtype_storage         = 2
	wgpubufferbindingtype_readonlystorage = 3
	wgpubufferbindingtype_force32         = 2147483647
}

enum WGPUBufferMapAsyncStatus {
	wgpubuffermapasyncstatus_success                 = 0
	wgpubuffermapasyncstatus_validationerror         = 1
	wgpubuffermapasyncstatus_unknown                 = 2
	wgpubuffermapasyncstatus_devicelost              = 3
	wgpubuffermapasyncstatus_destroyedbeforecallback = 4
	wgpubuffermapasyncstatus_unmappedbeforecallback  = 5
	wgpubuffermapasyncstatus_mappingalreadypending   = 6
	wgpubuffermapasyncstatus_offsetoutofrange        = 7
	wgpubuffermapasyncstatus_sizeoutofrange          = 8
	wgpubuffermapasyncstatus_force32                 = 2147483647
}

enum WGPUBufferMapState {
	wgpubuffermapstate_unmapped = 0
	wgpubuffermapstate_pending  = 1
	wgpubuffermapstate_mapped   = 2
	wgpubuffermapstate_force32  = 2147483647
}

enum WGPUCompareFunction {
	wgpucomparefunction_undefined    = 0
	wgpucomparefunction_never        = 1
	wgpucomparefunction_less         = 2
	wgpucomparefunction_lessequal    = 3
	wgpucomparefunction_greater      = 4
	wgpucomparefunction_greaterequal = 5
	wgpucomparefunction_equal        = 6
	wgpucomparefunction_notequal     = 7
	wgpucomparefunction_always       = 8
	wgpucomparefunction_force32      = 2147483647
}

enum WGPUCompilationInfoRequestStatus {
	wgpucompilationinforequeststatus_success    = 0
	wgpucompilationinforequeststatus_error      = 1
	wgpucompilationinforequeststatus_devicelost = 2
	wgpucompilationinforequeststatus_unknown    = 3
	wgpucompilationinforequeststatus_force32    = 2147483647
}

enum WGPUCompilationMessageType {
	wgpucompilationmessagetype_error   = 0
	wgpucompilationmessagetype_warning = 1
	wgpucompilationmessagetype_info    = 2
	wgpucompilationmessagetype_force32 = 2147483647
}

enum WGPUCompositeAlphaMode {
	wgpucompositealphamode_auto            = 0
	wgpucompositealphamode_opaque          = 1
	wgpucompositealphamode_premultiplied   = 2
	wgpucompositealphamode_unpremultiplied = 3
	wgpucompositealphamode_inherit         = 4
	wgpucompositealphamode_force32         = 2147483647
}

enum WGPUCreatePipelineAsyncStatus {
	wgpucreatepipelineasyncstatus_success         = 0
	wgpucreatepipelineasyncstatus_validationerror = 1
	wgpucreatepipelineasyncstatus_internalerror   = 2
	wgpucreatepipelineasyncstatus_devicelost      = 3
	wgpucreatepipelineasyncstatus_devicedestroyed = 4
	wgpucreatepipelineasyncstatus_unknown         = 5
	wgpucreatepipelineasyncstatus_force32         = 2147483647
}

enum WGPUCullMode {
	wgpucullmode_none    = 0
	wgpucullmode_front   = 1
	wgpucullmode_back    = 2
	wgpucullmode_force32 = 2147483647
}

enum WGPUDeviceLostReason {
	wgpudevicelostreason_undefined = 0
	wgpudevicelostreason_destroyed = 1
	wgpudevicelostreason_force32   = 2147483647
}

enum WGPUErrorFilter {
	wgpuerrorfilter_validation  = 0
	wgpuerrorfilter_outofmemory = 1
	wgpuerrorfilter_internal    = 2
	wgpuerrorfilter_force32     = 2147483647
}

enum WGPUErrorType {
	wgpuerrortype_noerror     = 0
	wgpuerrortype_validation  = 1
	wgpuerrortype_outofmemory = 2
	wgpuerrortype_internal    = 3
	wgpuerrortype_unknown     = 4
	wgpuerrortype_devicelost  = 5
	wgpuerrortype_force32     = 2147483647
}

enum WGPUFeatureName {
	wgpufeaturename_undefined               = 0
	wgpufeaturename_depthclipcontrol        = 1
	wgpufeaturename_depth32floatstencil8    = 2
	wgpufeaturename_timestampquery          = 3
	wgpufeaturename_texturecompressionbc    = 4
	wgpufeaturename_texturecompressionetc2  = 5
	wgpufeaturename_texturecompressionastc  = 6
	wgpufeaturename_indirectfirstinstance   = 7
	wgpufeaturename_shaderf16               = 8
	wgpufeaturename_rg11b10ufloatrenderable = 9
	wgpufeaturename_bgra8unormstorage       = 10
	wgpufeaturename_float32filterable       = 11
	wgpufeaturename_force32                 = 2147483647
}

enum WGPUFilterMode {
	wgpufiltermode_nearest = 0
	wgpufiltermode_linear  = 1
	wgpufiltermode_force32 = 2147483647
}

enum WGPUFrontFace {
	wgpufrontface_ccw     = 0
	wgpufrontface_cw      = 1
	wgpufrontface_force32 = 2147483647
}

enum WGPUIndexFormat {
	wgpuindexformat_undefined = 0
	wgpuindexformat_uint16    = 1
	wgpuindexformat_uint32    = 2
	wgpuindexformat_force32   = 2147483647
}

enum WGPULoadOp {
	wgpuloadop_undefined = 0
	wgpuloadop_clear     = 1
	wgpuloadop_load      = 2
	wgpuloadop_force32   = 2147483647
}

enum WGPUMipmapFilterMode {
	wgpumipmapfiltermode_nearest = 0
	wgpumipmapfiltermode_linear  = 1
	wgpumipmapfiltermode_force32 = 2147483647
}

enum WGPUPowerPreference {
	wgpupowerpreference_undefined       = 0
	wgpupowerpreference_lowpower        = 1
	wgpupowerpreference_highperformance = 2
	wgpupowerpreference_force32         = 2147483647
}

enum WGPUPresentMode {
	wgpupresentmode_fifo        = 0
	wgpupresentmode_fiforelaxed = 1
	wgpupresentmode_immediate   = 2
	wgpupresentmode_mailbox     = 3
	wgpupresentmode_force32     = 2147483647
}

enum WGPUPrimitiveTopology {
	wgpuprimitivetopology_pointlist     = 0
	wgpuprimitivetopology_linelist      = 1
	wgpuprimitivetopology_linestrip     = 2
	wgpuprimitivetopology_trianglelist  = 3
	wgpuprimitivetopology_trianglestrip = 4
	wgpuprimitivetopology_force32       = 2147483647
}

enum WGPUQueryType {
	wgpuquerytype_occlusion = 0
	wgpuquerytype_timestamp = 1
	wgpuquerytype_force32   = 2147483647
}

enum WGPUQueueWorkDoneStatus {
	wgpuqueueworkdonestatus_success    = 0
	wgpuqueueworkdonestatus_error      = 1
	wgpuqueueworkdonestatus_unknown    = 2
	wgpuqueueworkdonestatus_devicelost = 3
	wgpuqueueworkdonestatus_force32    = 2147483647
}

enum WGPURequestAdapterStatus {
	wgpurequestadapterstatus_success     = 0
	wgpurequestadapterstatus_unavailable = 1
	wgpurequestadapterstatus_error       = 2
	wgpurequestadapterstatus_unknown     = 3
	wgpurequestadapterstatus_force32     = 2147483647
}

enum WGPURequestDeviceStatus {
	wgpurequestdevicestatus_success = 0
	wgpurequestdevicestatus_error   = 1
	wgpurequestdevicestatus_unknown = 2
	wgpurequestdevicestatus_force32 = 2147483647
}

enum WGPUSType {
	wgpustype_invalid                                  = 0
	wgpustype_surfacedescriptorfrommetallayer          = 1
	wgpustype_surfacedescriptorfromwindowshwnd         = 2
	wgpustype_surfacedescriptorfromxlibwindow          = 3
	wgpustype_surfacedescriptorfromcanvashtmlselector  = 4
	wgpustype_shadermodulespirvdescriptor              = 5
	wgpustype_shadermodulewgsldescriptor               = 6
	wgpustype_primitivedepthclipcontrol                = 7
	wgpustype_surfacedescriptorfromwaylandsurface      = 8
	wgpustype_surfacedescriptorfromandroidnativewindow = 9
	wgpustype_surfacedescriptorfromxcbwindow           = 10
	wgpustype_renderpassdescriptormaxdrawcount         = 15
	wgpustype_force32                                  = 2147483647
}

enum WGPUSamplerBindingType {
	wgpusamplerbindingtype_undefined    = 0
	wgpusamplerbindingtype_filtering    = 1
	wgpusamplerbindingtype_nonfiltering = 2
	wgpusamplerbindingtype_comparison   = 3
	wgpusamplerbindingtype_force32      = 2147483647
}

enum WGPUStencilOperation {
	wgpustenciloperation_keep           = 0
	wgpustenciloperation_zero           = 1
	wgpustenciloperation_replace        = 2
	wgpustenciloperation_invert         = 3
	wgpustenciloperation_incrementclamp = 4
	wgpustenciloperation_decrementclamp = 5
	wgpustenciloperation_incrementwrap  = 6
	wgpustenciloperation_decrementwrap  = 7
	wgpustenciloperation_force32        = 2147483647
}

enum WGPUStorageTextureAccess {
	wgpustoragetextureaccess_undefined = 0
	wgpustoragetextureaccess_writeonly = 1
	wgpustoragetextureaccess_readonly  = 2
	wgpustoragetextureaccess_readwrite = 3
	wgpustoragetextureaccess_force32   = 2147483647
}

enum WGPUStoreOp {
	wgpustoreop_undefined = 0
	wgpustoreop_store     = 1
	wgpustoreop_discard   = 2
	wgpustoreop_force32   = 2147483647
}

enum WGPUSurfaceGetCurrentTextureStatus {
	wgpusurfacegetcurrenttexturestatus_success     = 0
	wgpusurfacegetcurrenttexturestatus_timeout     = 1
	wgpusurfacegetcurrenttexturestatus_outdated    = 2
	wgpusurfacegetcurrenttexturestatus_lost        = 3
	wgpusurfacegetcurrenttexturestatus_outofmemory = 4
	wgpusurfacegetcurrenttexturestatus_devicelost  = 5
	wgpusurfacegetcurrenttexturestatus_force32     = 2147483647
}

enum WGPUTextureAspect {
	wgputextureaspect_all         = 0
	wgputextureaspect_stencilonly = 1
	wgputextureaspect_depthonly   = 2
	wgputextureaspect_force32     = 2147483647
}

enum WGPUTextureDimension {
	wgputexturedimension_1d      = 0
	wgputexturedimension_2d      = 1
	wgputexturedimension_3d      = 2
	wgputexturedimension_force32 = 2147483647
}

enum WGPUTextureFormat {
	wgputextureformat_undefined            = 0
	wgputextureformat_r8unorm              = 1
	wgputextureformat_r8snorm              = 2
	wgputextureformat_r8uint               = 3
	wgputextureformat_r8sint               = 4
	wgputextureformat_r16uint              = 5
	wgputextureformat_r16sint              = 6
	wgputextureformat_r16float             = 7
	wgputextureformat_rg8unorm             = 8
	wgputextureformat_rg8snorm             = 9
	wgputextureformat_rg8uint              = 10
	wgputextureformat_rg8sint              = 11
	wgputextureformat_r32float             = 12
	wgputextureformat_r32uint              = 13
	wgputextureformat_r32sint              = 14
	wgputextureformat_rg16uint             = 15
	wgputextureformat_rg16sint             = 16
	wgputextureformat_rg16float            = 17
	wgputextureformat_rgba8unorm           = 18
	wgputextureformat_rgba8unormsrgb       = 19
	wgputextureformat_rgba8snorm           = 20
	wgputextureformat_rgba8uint            = 21
	wgputextureformat_rgba8sint            = 22
	wgputextureformat_bgra8unorm           = 23
	wgputextureformat_bgra8unormsrgb       = 24
	wgputextureformat_rgb10a2uint          = 25
	wgputextureformat_rgb10a2unorm         = 26
	wgputextureformat_rg11b10ufloat        = 27
	wgputextureformat_rgb9e5ufloat         = 28
	wgputextureformat_rg32float            = 29
	wgputextureformat_rg32uint             = 30
	wgputextureformat_rg32sint             = 31
	wgputextureformat_rgba16uint           = 32
	wgputextureformat_rgba16sint           = 33
	wgputextureformat_rgba16float          = 34
	wgputextureformat_rgba32float          = 35
	wgputextureformat_rgba32uint           = 36
	wgputextureformat_rgba32sint           = 37
	wgputextureformat_stencil8             = 38
	wgputextureformat_depth16unorm         = 39
	wgputextureformat_depth24plus          = 40
	wgputextureformat_depth24plusstencil8  = 41
	wgputextureformat_depth32float         = 42
	wgputextureformat_depth32floatstencil8 = 43
	wgputextureformat_bc1rgbaunorm         = 44
	wgputextureformat_bc1rgbaunormsrgb     = 45
	wgputextureformat_bc2rgbaunorm         = 46
	wgputextureformat_bc2rgbaunormsrgb     = 47
	wgputextureformat_bc3rgbaunorm         = 48
	wgputextureformat_bc3rgbaunormsrgb     = 49
	wgputextureformat_bc4runorm            = 50
	wgputextureformat_bc4rsnorm            = 51
	wgputextureformat_bc5rgunorm           = 52
	wgputextureformat_bc5rgsnorm           = 53
	wgputextureformat_bc6hrgbufloat        = 54
	wgputextureformat_bc6hrgbfloat         = 55
	wgputextureformat_bc7rgbaunorm         = 56
	wgputextureformat_bc7rgbaunormsrgb     = 57
	wgputextureformat_etc2rgb8unorm        = 58
	wgputextureformat_etc2rgb8unormsrgb    = 59
	wgputextureformat_etc2rgb8a1unorm      = 60
	wgputextureformat_etc2rgb8a1unormsrgb  = 61
	wgputextureformat_etc2rgba8unorm       = 62
	wgputextureformat_etc2rgba8unormsrgb   = 63
	wgputextureformat_eacr11unorm          = 64
	wgputextureformat_eacr11snorm          = 65
	wgputextureformat_eacrg11unorm         = 66
	wgputextureformat_eacrg11snorm         = 67
	wgputextureformat_astc4x4unorm         = 68
	wgputextureformat_astc4x4unormsrgb     = 69
	wgputextureformat_astc5x4unorm         = 70
	wgputextureformat_astc5x4unormsrgb     = 71
	wgputextureformat_astc5x5unorm         = 72
	wgputextureformat_astc5x5unormsrgb     = 73
	wgputextureformat_astc6x5unorm         = 74
	wgputextureformat_astc6x5unormsrgb     = 75
	wgputextureformat_astc6x6unorm         = 76
	wgputextureformat_astc6x6unormsrgb     = 77
	wgputextureformat_astc8x5unorm         = 78
	wgputextureformat_astc8x5unormsrgb     = 79
	wgputextureformat_astc8x6unorm         = 80
	wgputextureformat_astc8x6unormsrgb     = 81
	wgputextureformat_astc8x8unorm         = 82
	wgputextureformat_astc8x8unormsrgb     = 83
	wgputextureformat_astc10x5unorm        = 84
	wgputextureformat_astc10x5unormsrgb    = 85
	wgputextureformat_astc10x6unorm        = 86
	wgputextureformat_astc10x6unormsrgb    = 87
	wgputextureformat_astc10x8unorm        = 88
	wgputextureformat_astc10x8unormsrgb    = 89
	wgputextureformat_astc10x10unorm       = 90
	wgputextureformat_astc10x10unormsrgb   = 91
	wgputextureformat_astc12x10unorm       = 92
	wgputextureformat_astc12x10unormsrgb   = 93
	wgputextureformat_astc12x12unorm       = 94
	wgputextureformat_astc12x12unormsrgb   = 95
	wgputextureformat_force32              = 2147483647
}

enum WGPUTextureSampleType {
	wgputexturesampletype_undefined         = 0
	wgputexturesampletype_float             = 1
	wgputexturesampletype_unfilterablefloat = 2
	wgputexturesampletype_depth             = 3
	wgputexturesampletype_sint              = 4
	wgputexturesampletype_uint              = 5
	wgputexturesampletype_force32           = 2147483647
}

enum WGPUTextureViewDimension {
	wgputextureviewdimension_undefined = 0
	wgputextureviewdimension_1d        = 1
	wgputextureviewdimension_2d        = 2
	wgputextureviewdimension_2darray   = 3
	wgputextureviewdimension_cube      = 4
	wgputextureviewdimension_cubearray = 5
	wgputextureviewdimension_3d        = 6
	wgputextureviewdimension_force32   = 2147483647
}

enum WGPUVertexFormat {
	wgpuvertexformat_undefined = 0
	wgpuvertexformat_uint8x2   = 1
	wgpuvertexformat_uint8x4   = 2
	wgpuvertexformat_sint8x2   = 3
	wgpuvertexformat_sint8x4   = 4
	wgpuvertexformat_unorm8x2  = 5
	wgpuvertexformat_unorm8x4  = 6
	wgpuvertexformat_snorm8x2  = 7
	wgpuvertexformat_snorm8x4  = 8
	wgpuvertexformat_uint16x2  = 9
	wgpuvertexformat_uint16x4  = 10
	wgpuvertexformat_sint16x2  = 11
	wgpuvertexformat_sint16x4  = 12
	wgpuvertexformat_unorm16x2 = 13
	wgpuvertexformat_unorm16x4 = 14
	wgpuvertexformat_snorm16x2 = 15
	wgpuvertexformat_snorm16x4 = 16
	wgpuvertexformat_float16x2 = 17
	wgpuvertexformat_float16x4 = 18
	wgpuvertexformat_float32   = 19
	wgpuvertexformat_float32x2 = 20
	wgpuvertexformat_float32x3 = 21
	wgpuvertexformat_float32x4 = 22
	wgpuvertexformat_uint32    = 23
	wgpuvertexformat_uint32x2  = 24
	wgpuvertexformat_uint32x3  = 25
	wgpuvertexformat_uint32x4  = 26
	wgpuvertexformat_sint32    = 27
	wgpuvertexformat_sint32x2  = 28
	wgpuvertexformat_sint32x3  = 29
	wgpuvertexformat_sint32x4  = 30
	wgpuvertexformat_force32   = 2147483647
}

enum WGPUVertexStepMode {
	wgpuvertexstepmode_vertex              = 0
	wgpuvertexstepmode_instance            = 1
	wgpuvertexstepmode_vertexbuffernotused = 2
	wgpuvertexstepmode_force32             = 2147483647
}

enum WGPUBufferUsage {
	wgpubufferusage_none         = 0
	wgpubufferusage_mapread      = 1
	wgpubufferusage_mapwrite     = 2
	wgpubufferusage_copysrc      = 4
	wgpubufferusage_copydst      = 8
	wgpubufferusage_index        = 16
	wgpubufferusage_vertex       = 32
	wgpubufferusage_uniform      = 64
	wgpubufferusage_storage      = 128
	wgpubufferusage_indirect     = 256
	wgpubufferusage_queryresolve = 512
	wgpubufferusage_force32      = 2147483647
}

type WGPUBufferUsageFlags = WGPUFlags

enum WGPUColorWriteMask {
	wgpucolorwritemask_none    = 0
	wgpucolorwritemask_red     = 1
	wgpucolorwritemask_green   = 2
	wgpucolorwritemask_blue    = 4
	wgpucolorwritemask_alpha   = 8
	wgpucolorwritemask_all     = 15
	wgpucolorwritemask_force32 = 2147483647
}

type WGPUColorWriteMaskFlags = WGPUFlags

enum WGPUMapMode {
	wgpumapmode_none    = 0
	wgpumapmode_read    = 1
	wgpumapmode_write   = 2
	wgpumapmode_force32 = 2147483647
}

type WGPUMapModeFlags = WGPUFlags

enum WGPUShaderStage {
	wgpushaderstage_none     = 0
	wgpushaderstage_vertex   = 1
	wgpushaderstage_fragment = 2
	wgpushaderstage_compute  = 4
	wgpushaderstage_force32  = 2147483647
}

type WGPUShaderStageFlags = WGPUFlags

enum WGPUTextureUsage {
	wgputextureusage_none             = 0
	wgputextureusage_copysrc          = 1
	wgputextureusage_copydst          = 2
	wgputextureusage_texturebinding   = 4
	wgputextureusage_storagebinding   = 8
	wgputextureusage_renderattachment = 16
	wgputextureusage_force32          = 2147483647
}

type WGPUTextureUsageFlags = WGPUFlags
type WGPUBufferMapCallback = fn (WGPUBufferMapAsyncStatus, voidptr)

type WGPUCompilationInfoCallback = fn (WGPUCompilationInfoRequestStatus, &WGPUCompilationInfo, voidptr)

type WGPUCreateComputePipelineAsyncCallback = fn (WGPUCreatePipelineAsyncStatus, WGPUComputePipeline, &i8, voidptr)

type WGPUCreateRenderPipelineAsyncCallback = fn (WGPUCreatePipelineAsyncStatus, WGPURenderPipeline, &i8, voidptr)

type WGPUDeviceLostCallback = fn (WGPUDeviceLostReason, &i8, voidptr)

type WGPUErrorCallback = fn (WGPUErrorType, &i8, voidptr)

type WGPUProc = fn ()

type WGPUQueueWorkDoneCallback = fn (WGPUQueueWorkDoneStatus, voidptr)

type WGPURequestAdapterCallback = fn (WGPURequestAdapterStatus, WGPUAdapter, &i8, voidptr)

type WGPURequestDeviceCallback = fn (WGPURequestDeviceStatus, WGPUDevice, &i8, voidptr)

struct WGPUChainedStruct {
	next  &WGPUChainedStruct
	sType WGPUSType
}

struct WGPUChainedStructOut {
	next  &WGPUChainedStructOut
	sType WGPUSType
}

struct WGPUAdapterProperties {
	next_in_chain     &WGPUChainedStructOut
	vendorID          u32
	vendorName        &i8
	architecture      &i8
	deviceID          u32
	name              &i8
	driverDescription &i8
	adapterType       WGPUAdapterType
	backend_type      WGPUBackendType
}

struct WGPUBindGroupEntry {
	next_in_chain &WGPUChainedStruct
	binding       u32
	buffer        WGPUBuffer
	offset        u64
	size          u64
	sampler       WGPUSampler
	textureView   WGPUTextureView
}

struct WGPUBlendComponent {
	operation WGPUBlendOperation
	srcFactor WGPUBlendFactor
	dstFactor WGPUBlendFactor
}

struct WGPUBufferBindingLayout {
	next_in_chain    &WGPUChainedStruct
	type_            WGPUBufferBindingType
	hasDynamicOffset WGPUBool
	minBindingSize   u64
}

struct WGPUBufferDescriptor {
	next_in_chain    &WGPUChainedStruct
	label            &i8
	usage            WGPUBufferUsageFlags
	size             u64
	mappedAtCreation WGPUBool
}

struct WGPUColor {
	r f64
	g f64
	b f64
	a f64
}

struct WGPUCommandBufferDescriptor {
	next_in_chain &WGPUChainedStruct
	label         &i8
}

struct WGPUCommandEncoderDescriptor {
	next_in_chain &WGPUChainedStruct
	label         &i8
}

struct WGPUCompilationMessage {
	next_in_chain &WGPUChainedStruct
	message       &i8
	type_         WGPUCompilationMessageType
	lineNum       u64
	linePos       u64
	offset        u64
	length        u64
	utf16LinePos  u64
	utf16Offset   u64
	utf16Length   u64
}

struct WGPUComputePassTimestampWrites {
	query_set                     WGPUQuerySet
	beginning_of_pass_write_index u32
	end_of_pass_write_index       u32
}

struct WGPUConstantEntry {
	next_in_chain &WGPUChainedStruct
	key           &i8
	value         f64
}

struct WGPUExtent3D {
	width              u32
	height             u32
	depthOrArrayLayers u32
}

struct WGPUInstanceDescriptor {
	next_in_chain &WGPUChainedStruct
}

struct WGPULimits {
	max_texture_dimension_1d                  u32
	max_texture_dimension_2d                  u32
	max_texture_dimension_3d                  u32
	maxTextureArrayLayers                     u32
	maxBindGroups                             u32
	maxBindGroupsPlusVertexBuffers            u32
	maxBindingsPerBindGroup                   u32
	maxDynamicUniformBuffersPerPipelineLayout u32
	maxDynamicStorageBuffersPerPipelineLayout u32
	maxSampledTexturesPerShaderStage          u32
	maxSamplersPerShaderStage                 u32
	max_storage_buffers_per_shader_stage      u32
	max_storage_textures_per_shader_stage     u32
	maxUniformBuffersPerShaderStage           u32
	maxUniformBufferBindingSize               u64
	maxStorageBufferBindingSize               u64
	min_uniform_buffer_offset_alignment       u32
	min_storage_buffer_offset_alignment       u32
	max_vertex_buffers                        u32
	max_buffer_size                           u64
	max_vertex_attributes                     u32
	max_vertex_buffer_array_stride            u32
	max_inter_stage_shader_components         u32
	max_inter_stage_shader_variables          u32
	max_color_attachments                     u32
	max_color_attachment_bytes_per_sample     u32
	max_compute_workgroup_storage_size        u32
	max_compute_invocations_per_workgroup     u32
	max_compute_workgroup_size_x              u32
	max_compute_workgroup_size_y              u32
	max_compute_workgroup_size_z              u32
	max_compute_workgroups_per_dimension      u32
}

struct WGPUMultisampleState {
	next_in_chain             &WGPUChainedStruct
	count                     u32
	mask                      u32
	alpha_to_coverage_enabled WGPUBool
}

struct WGPUOrigin3D {
	x u32
	y u32
	z u32
}

struct WGPUPipelineLayoutDescriptor {
	next_in_chain           &WGPUChainedStruct
	label                   &i8
	bind_group_layout_count usize
	bind_group_layouts      &WGPUBindGroupLayout
}

struct WGPUPrimitiveDepthClipControl {
	chain           WGPUChainedStruct
	unclipped_depth WGPUBool
}

struct WGPUPrimitiveState {
	next_in_chain      &WGPUChainedStruct
	topology           WGPUPrimitiveTopology
	strip_index_format WGPUIndexFormat
	front_face         WGPUFrontFace
	cull_mode          WGPUCullMode
}

struct WGPUQuerySetDescriptor {
	next_in_chain &WGPUChainedStruct
	label         &i8
	type_         WGPUQueryType
	count         u32
}

struct WGPUQueueDescriptor {
	next_in_chain &WGPUChainedStruct
	label         &i8
}

struct WGPURenderBundleDescriptor {
	next_in_chain &WGPUChainedStruct
	label         &i8
}

struct WGPURenderBundleEncoderDescriptor {
	next_in_chain        &WGPUChainedStruct
	label                &i8
	color_format_count   usize
	color_formats        &WGPUTextureFormat
	depth_stencil_format WGPUTextureFormat
	sample_count         u32
	depth_read_only      WGPUBool
	stencil_read_only    WGPUBool
}

struct WGPURenderPassDepthStencilAttachment {
	view                WGPUTextureView
	depth_load_op       WGPULoadOp
	depth_store_op      WGPUStoreOp
	depth_clear_value   f32
	depth_read_only     WGPUBool
	stencil_load_op     WGPULoadOp
	stencil_store_op    WGPUStoreOp
	stencil_clear_value u32
	stencil_read_only   WGPUBool
}

struct WGPURenderPassDescriptorMaxDrawCount {
	chain          WGPUChainedStruct
	max_draw_count u64
}

struct WGPURenderPassTimestampWrites {
	query_set                     WGPUQuerySet
	beginning_of_pass_write_index u32
	end_of_pass_write_index       u32
}

struct WGPURequestAdapterOptions {
	next_in_chain          &WGPUChainedStruct
	compatible_surface     WGPUSurface
	power_preference       WGPUPowerPreference
	backend_type           WGPUBackendType
	force_fallback_adapter WGPUBool
}

struct WGPUSamplerBindingLayout {
	next_in_chain &WGPUChainedStruct
	type_         WGPUSamplerBindingType
}

struct WGPUSamplerDescriptor {
	next_in_chain  &WGPUChainedStruct
	label          &i8
	address_mode_u WGPUAddressMode
	address_mode_v WGPUAddressMode
	address_mode_w WGPUAddressMode
	mag_filter     WGPUFilterMode
	min_filter     WGPUFilterMode
	mipmap_filter  WGPUMipmapFilterMode
	lod_min_clamp  f32
	load_max_clamp f32
	compare        WGPUCompareFunction
	max_anisotropy u16
}

struct WGPUShaderModuleCompilationHint {
	next_in_chain &WGPUChainedStruct
	entry_point   &i8
	layout        WGPUPipelineLayout
}

struct WGPUShaderModuleSPIRVDescriptor {
	chain     WGPUChainedStruct
	code_size u32
	code      &u32
}

struct WGPUShaderModuleWGSLDescriptor {
	chain WGPUChainedStruct
	code  &i8
}

struct WGPUStencilFaceState {
	compare       WGPUCompareFunction
	fail_op       WGPUStencilOperation
	depth_fail_op WGPUStencilOperation
	pass_op       WGPUStencilOperation
}

struct WGPUStorageTextureBindingLayout {
	next_in_chain  &WGPUChainedStruct
	access         WGPUStorageTextureAccess
	format         WGPUTextureFormat
	view_dimension WGPUTextureViewDimension
}

struct WGPUSurfaceCapabilities {
	next_in_chain      &WGPUChainedStructOut
	format_count       usize
	formats            &WGPUTextureFormat
	present_mode_count usize
	present_modes      &WGPUPresentMode
	alpha_mode_count   usize
	alpha_modes        &WGPUCompositeAlphaMode
}

struct WGPUSurfaceConfiguration {
	next_in_chain     &WGPUChainedStruct
	device            WGPUDevice
	format            WGPUTextureFormat
	usage             WGPUTextureUsageFlags
	view_format_count usize
	view_formats      &WGPUTextureFormat
	alpha_mode        WGPUCompositeAlphaMode
	width             u32
	height            u32
	present_mode      WGPUPresentMode
}

struct WGPUSurfaceDescriptor {
	next_in_chain &WGPUChainedStruct
	label         &i8
}

struct WGPUSurfaceDescriptorFromAndroidNativeWindow {
	chain  WGPUChainedStruct
	window voidptr
}

struct WGPUSurfaceDescriptorFromCanvasHTMLSelector {
	chain    WGPUChainedStruct
	selector &i8
}

struct WGPUSurfaceDescriptorFromMetalLayer {
	chain WGPUChainedStruct
	layer voidptr
}

struct WGPUSurfaceDescriptorFromWaylandSurface {
	chain   WGPUChainedStruct
	display voidptr
	surface voidptr
}

struct WGPUSurfaceDescriptorFromWindowsHWND {
	chain     WGPUChainedStruct
	hinstance voidptr
	hwnd      voidptr
}

struct WGPUSurfaceDescriptorFromXcbWindow {
	chain      WGPUChainedStruct
	connection voidptr
	window     u32
}

struct WGPUSurfaceDescriptorFromXlibWindow {
	chain   WGPUChainedStruct
	display voidptr
	window  u64
}

struct WGPUSurfaceTexture {
	texture    WGPUTexture
	suboptimal WGPUBool
	status     WGPUSurfaceGetCurrentTextureStatus
}

struct WGPUTextureBindingLayout {
	next_in_chain  &WGPUChainedStruct
	sample_type    WGPUTextureSampleType
	view_dimension WGPUTextureViewDimension
	multisampled   WGPUBool
}

struct WGPUTextureDataLayout {
	next_in_chain  &WGPUChainedStruct
	offset         u64
	bytes_per_row  u32
	rows_per_image u32
}

struct WGPUTextureViewDescriptor {
	next_in_chain     &WGPUChainedStruct
	label             &i8
	format            WGPUTextureFormat
	dimension         WGPUTextureViewDimension
	base_mip_level    u32
	mip_level_count   u32
	base_array_layer  u32
	array_level_count u32
	aspect            WGPUTextureAspect
}

struct WGPUVertexAttribute {
	format          WGPUVertexFormat
	offset          u64
	shader_location u32
}

struct WGPUBindGroupDescriptor {
	next_in_chain &WGPUChainedStruct
	label         &i8
	layout        WGPUBindGroupLayout
	entry_count   usize
	entries       &WGPUBindGroupEntry
}

struct WGPUBindGroupLayoutEntry {
	next_in_chain   &WGPUChainedStruct
	binding         u32
	visibility      WGPUShaderStageFlags
	buffer          WGPUBufferBindingLayout
	sampler         WGPUSamplerBindingLayout
	texture         WGPUTextureBindingLayout
	storage_texture WGPUStorageTextureBindingLayout
}

struct WGPUBlendState {
	color WGPUBlendComponent
	alpha WGPUBlendComponent
}

struct WGPUCompilationInfo {
	next_in_chain &WGPUChainedStruct
	message_count usize
	messages      &WGPUCompilationMessage
}

struct WGPUComputePassDescriptor {
	next_in_chain    &WGPUChainedStruct
	label            &i8
	timestamp_writes &WGPUComputePassTimestampWrites
}

struct WGPUDepthStencilState {
	next_in_chain          &WGPUChainedStruct
	format                 WGPUTextureFormat
	depth_write_enabled    WGPUBool
	depth_compare          WGPUCompareFunction
	stencil_front          WGPUStencilFaceState
	stencil_back           WGPUStencilFaceState
	stencil_read_mask      u32
	stencil_write_mask     u32
	depth_bias             int
	depth_bias_slope_scale f32
	depth_bias_clamp       f32
}

struct WGPUImageCopyBuffer {
	next_in_chain &WGPUChainedStruct
	layout        WGPUTextureDataLayout
	buffer        WGPUBuffer
}

struct WGPUImageCopyTexture {
	next_in_chain &WGPUChainedStruct
	texture       WGPUTexture
	mip_level     u32
	origin        WGPUOrigin3D
	aspect        WGPUTextureAspect
}

struct WGPUProgrammableStageDescriptor {
	next_in_chain  &WGPUChainedStruct
	module_        WGPUShaderModule
	entry_point    &i8
	constant_count usize
	constants      &WGPUConstantEntry
}

struct WGPURenderPassColorAttachment {
	next_in_chain  &WGPUChainedStruct
	view           WGPUTextureView
	resolve_target WGPUTextureView
	load_op        WGPULoadOp
	store_op       WGPUStoreOp
	clear_value    WGPUColor
}

struct WGPURequiredLimits {
	next_in_chain &WGPUChainedStruct
	limits        WGPULimits
}

struct WGPUShaderModuleDescriptor {
	next_in_chain &WGPUChainedStruct
	label         &i8
	hint_count    usize
	hints         &WGPUShaderModuleCompilationHint
}

struct WGPUSupportedLimits {
	next_in_chain &WGPUChainedStructOut
	limits        WGPULimits
}

struct WGPUTextureDescriptor {
	next_in_chain     &WGPUChainedStruct
	label             &i8
	usage             WGPUTextureUsageFlags
	dimension         WGPUTextureDimension
	size              WGPUExtent3D
	format            WGPUTextureFormat
	mip_level_count   u32
	sample_count      u32
	view_format_count usize
	view_formats      &WGPUTextureFormat
}

struct WGPUVertexBufferLayout {
	array_stride    u64
	step_mode       WGPUVertexStepMode
	attribute_count usize
	attributes      &WGPUVertexAttribute
}

struct WGPUBindGroupLayoutDescriptor {
	next_in_chain &WGPUChainedStruct
	label         &i8
	entry_count   usize
	entries       &WGPUBindGroupLayoutEntry
}

struct WGPUColorTargetState {
	next_in_chain &WGPUChainedStruct
	format        WGPUTextureFormat
	blend         &WGPUBlendState
	write_mask    WGPUColorWriteMaskFlags
}

struct WGPUComputePipelineDescriptor {
	next_in_chain &WGPUChainedStruct
	label         &i8
	layout        WGPUPipelineLayout
	compute       WGPUProgrammableStageDescriptor
}

struct WGPUDeviceDescriptor {
	next_in_chain          &WGPUChainedStruct
	label                  &i8
	required_feature_count usize
	required_features      &WGPUFeatureName
	require_limits         &WGPURequiredLimits
	default_queue          WGPUQueueDescriptor
	device_lost_callback   WGPUDeviceLostCallback
	device_lost_user_data  voidptr
}

struct WGPURenderPassDescriptor {
	next_in_chain            &WGPUChainedStruct
	label                    &i8
	color_attachment_count   usize
	color_attachments        &WGPURenderPassColorAttachment
	depth_stencil_attachment &WGPURenderPassDepthStencilAttachment
	occlusion_query_set      WGPUQuerySet
	timestamp_writes         &WGPURenderPassTimestampWrites
}

struct WGPUVertexState {
	next_in_chain  &WGPUChainedStruct
	module_        WGPUShaderModule
	entry_point    &i8
	constant_count usize
	constants      &WGPUConstantEntry
	buffer_count   usize
	buffers        &WGPUVertexBufferLayout
}

struct WGPUFragmentState {
	next_in_chain  &WGPUChainedStruct
	module_        WGPUShaderModule
	entry_point    &i8
	constant_count usize
	constants      &WGPUConstantEntry
	target_count   usize
	targets        &WGPUColorTargetState
}

struct WGPURenderPipelineDescriptor {
	next_in_chain &WGPUChainedStruct
	label         &i8
	layout        WGPUPipelineLayout
	vertex        WGPUVertexState
	primitive     WGPUPrimitiveState
	depth_stencil &WGPUDepthStencilState
	multisample   WGPUMultisampleState
	fragment      &WGPUFragmentState
}

type WGPUProcCreateInstance = fn (&WGPUInstanceDescriptor) WGPUInstance

type WGPUProcGetProcAddress = fn (WGPUDevice, &i8) WGPUProc

type WGPUProcAdapterEnumerateFeatures = fn (WGPUAdapter, &WGPUFeatureName) usize

type WGPUProcAdapterGetLimits = fn (WGPUAdapter, &WGPUSupportedLimits) WGPUBool

type WGPUProcAdapterGetProperties = fn (WGPUAdapter, &WGPUAdapterProperties)

type WGPUProcAdapterHasFeature = fn (WGPUAdapter, WGPUFeatureName) WGPUBool

type WGPUProcAdapterRequestDevice = fn (WGPUAdapter, &WGPUDeviceDescriptor, WGPURequestDeviceCallback, voidptr)

type WGPUProcAdapterReference = fn (WGPUAdapter)

type WGPUProcAdapterRelease = fn (WGPUAdapter)

type WGPUProcBindGroupSetLabel = fn (WGPUBindGroup, &i8)

type WGPUProcBindGroupReference = fn (WGPUBindGroup)

type WGPUProcBindGroupRelease = fn (WGPUBindGroup)

type WGPUProcBindGroupLayoutSetLabel = fn (WGPUBindGroupLayout, &i8)

type WGPUProcBindGroupLayoutReference = fn (WGPUBindGroupLayout)

type WGPUProcBindGroupLayoutRelease = fn (WGPUBindGroupLayout)

type WGPUProcBufferDestroy = fn (WGPUBuffer)

type WGPUProcBufferGetConstMappedRange = fn (WGPUBuffer, usize, usize) voidptr

type WGPUProcBufferGetMapState = fn (WGPUBuffer) WGPUBufferMapState

type WGPUProcBufferGetMappedRange = fn (WGPUBuffer, usize, usize) voidptr

type WGPUProcBufferGetSize = fn (WGPUBuffer) u64

type WGPUProcBufferGetUsage = fn (WGPUBuffer) WGPUBufferUsageFlags

type WGPUProcBufferMapAsync = fn (WGPUBuffer, WGPUMapModeFlags, usize, usize, WGPUBufferMapCallback, voidptr)

type WGPUProcBufferSetLabel = fn (WGPUBuffer, &i8)

type WGPUProcBufferUnmap = fn (WGPUBuffer)

type WGPUProcBufferReference = fn (WGPUBuffer)

type WGPUProcBufferRelease = fn (WGPUBuffer)

type WGPUProcCommandBufferSetLabel = fn (WGPUCommandBuffer, &i8)

type WGPUProcCommandBufferReference = fn (WGPUCommandBuffer)

type WGPUProcCommandBufferRelease = fn (WGPUCommandBuffer)

type WGPUProcCommandEncoderBeginComputePass = fn (WGPUCommandEncoder, &WGPUComputePassDescriptor) WGPUComputePassEncoder

type WGPUProcCommandEncoderBeginRenderPass = fn (WGPUCommandEncoder, &WGPURenderPassDescriptor) WGPURenderPassEncoder

type WGPUProcCommandEncoderClearBuffer = fn (WGPUCommandEncoder, WGPUBuffer, u64, u64)

type WGPUProcCommandEncoderCopyBufferToBuffer = fn (WGPUCommandEncoder, WGPUBuffer, u64, WGPUBuffer, u64, u64)

type WGPUProcCommandEncoderCopyBufferToTexture = fn (WGPUCommandEncoder, &WGPUImageCopyBuffer, &WGPUImageCopyTexture, &WGPUExtent3D)

type WGPUProcCommandEncoderCopyTextureToBuffer = fn (WGPUCommandEncoder, &WGPUImageCopyTexture, &WGPUImageCopyBuffer, &WGPUExtent3D)

type WGPUProcCommandEncoderCopyTextureToTexture = fn (WGPUCommandEncoder, &WGPUImageCopyTexture, &WGPUImageCopyTexture, &WGPUExtent3D)

type WGPUProcCommandEncoderFinish = fn (WGPUCommandEncoder, &WGPUCommandBufferDescriptor) WGPUCommandBuffer

type WGPUProcCommandEncoderInsertDebugMarker = fn (WGPUCommandEncoder, &i8)

type WGPUProcCommandEncoderPopDebugGroup = fn (WGPUCommandEncoder)

type WGPUProcCommandEncoderPushDebugGroup = fn (WGPUCommandEncoder, &i8)

type WGPUProcCommandEncoderResolveQuerySet = fn (WGPUCommandEncoder, WGPUQuerySet, u32, u32, WGPUBuffer, u64)

type WGPUProcCommandEncoderSetLabel = fn (WGPUCommandEncoder, &i8)

type WGPUProcCommandEncoderWriteTimestamp = fn (WGPUCommandEncoder, WGPUQuerySet, u32)

type WGPUProcCommandEncoderReference = fn (WGPUCommandEncoder)

type WGPUProcCommandEncoderRelease = fn (WGPUCommandEncoder)

type WGPUProcComputePassEncoderDispatchWorkgroups = fn (WGPUComputePassEncoder, u32, u32, u32)

type WGPUProcComputePassEncoderDispatchWorkgroupsIndirect = fn (WGPUComputePassEncoder, WGPUBuffer, u64)

type WGPUProcComputePassEncoderEnd = fn (WGPUComputePassEncoder)

type WGPUProcComputePassEncoderInsertDebugMarker = fn (WGPUComputePassEncoder, &i8)

type WGPUProcComputePassEncoderPopDebugGroup = fn (WGPUComputePassEncoder)

type WGPUProcComputePassEncoderPushDebugGroup = fn (WGPUComputePassEncoder, &i8)

type WGPUProcComputePassEncoderSetBindGroup = fn (WGPUComputePassEncoder, u32, WGPUBindGroup, usize, &u32)

type WGPUProcComputePassEncoderSetLabel = fn (WGPUComputePassEncoder, &i8)

type WGPUProcComputePassEncoderSetPipeline = fn (WGPUComputePassEncoder, WGPUComputePipeline)

type WGPUProcComputePassEncoderReference = fn (WGPUComputePassEncoder)

type WGPUProcComputePassEncoderRelease = fn (WGPUComputePassEncoder)

type WGPUProcComputePipelineGetBindGroupLayout = fn (WGPUComputePipeline, u32) WGPUBindGroupLayout

type WGPUProcComputePipelineSetLabel = fn (WGPUComputePipeline, &i8)

type WGPUProcComputePipelineReference = fn (WGPUComputePipeline)

type WGPUProcComputePipelineRelease = fn (WGPUComputePipeline)

type WGPUProcDeviceCreateBindGroup = fn (WGPUDevice, &WGPUBindGroupDescriptor) WGPUBindGroup

type WGPUProcDeviceCreateBindGroupLayout = fn (WGPUDevice, &WGPUBindGroupLayoutDescriptor) WGPUBindGroupLayout

type WGPUProcDeviceCreateBuffer = fn (WGPUDevice, &WGPUBufferDescriptor) WGPUBuffer

type WGPUProcDeviceCreateCommandEncoder = fn (WGPUDevice, &WGPUCommandEncoderDescriptor) WGPUCommandEncoder

type WGPUProcDeviceCreateComputePipeline = fn (WGPUDevice, &WGPUComputePipelineDescriptor) WGPUComputePipeline

type WGPUProcDeviceCreateComputePipelineAsync = fn (WGPUDevice, &WGPUComputePipelineDescriptor, WGPUCreateComputePipelineAsyncCallback, voidptr)

type WGPUProcDeviceCreatePipelineLayout = fn (WGPUDevice, &WGPUPipelineLayoutDescriptor) WGPUPipelineLayout

type WGPUProcDeviceCreateQuerySet = fn (WGPUDevice, &WGPUQuerySetDescriptor) WGPUQuerySet

type WGPUProcDeviceCreateRenderBundleEncoder = fn (WGPUDevice, &WGPURenderBundleEncoderDescriptor) WGPURenderBundleEncoder

type WGPUProcDeviceCreateRenderPipeline = fn (WGPUDevice, &WGPURenderPipelineDescriptor) WGPURenderPipeline

type WGPUProcDeviceCreateRenderPipelineAsync = fn (WGPUDevice, &WGPURenderPipelineDescriptor, WGPUCreateRenderPipelineAsyncCallback, voidptr)

type WGPUProcDeviceCreateSampler = fn (WGPUDevice, &WGPUSamplerDescriptor) WGPUSampler

type WGPUProcDeviceCreateShaderModule = fn (WGPUDevice, &WGPUShaderModuleDescriptor) WGPUShaderModule

type WGPUProcDeviceCreateTexture = fn (WGPUDevice, &WGPUTextureDescriptor) WGPUTexture

type WGPUProcDeviceDestroy = fn (WGPUDevice)

type WGPUProcDeviceEnumerateFeatures = fn (WGPUDevice, &WGPUFeatureName) usize

type WGPUProcDeviceGetLimits = fn (WGPUDevice, &WGPUSupportedLimits) WGPUBool

type WGPUProcDeviceGetQueue = fn (WGPUDevice) WGPUQueue

type WGPUProcDeviceHasFeature = fn (WGPUDevice, WGPUFeatureName) WGPUBool

type WGPUProcDevicePopErrorScope = fn (WGPUDevice, WGPUErrorCallback, voidptr)

type WGPUProcDevicePushErrorScope = fn (WGPUDevice, WGPUErrorFilter)

type WGPUProcDeviceSetLabel = fn (WGPUDevice, &i8)

type WGPUProcDeviceSetUncapturedErrorCallback = fn (WGPUDevice, WGPUErrorCallback, voidptr)

type WGPUProcDeviceReference = fn (WGPUDevice)

type WGPUProcDeviceRelease = fn (WGPUDevice)

type WGPUProcInstanceCreateSurface = fn (WGPUInstance, &WGPUSurfaceDescriptor) WGPUSurface

type WGPUProcInstanceProcessEvents = fn (WGPUInstance)

type WGPUProcInstanceRequestAdapter = fn (WGPUInstance, &WGPURequestAdapterOptions, WGPURequestAdapterCallback, voidptr)

type WGPUProcInstanceReference = fn (WGPUInstance)

type WGPUProcInstanceRelease = fn (WGPUInstance)

type WGPUProcPipelineLayoutSetLabel = fn (WGPUPipelineLayout, &i8)

type WGPUProcPipelineLayoutReference = fn (WGPUPipelineLayout)

type WGPUProcPipelineLayoutRelease = fn (WGPUPipelineLayout)

type WGPUProcQuerySetDestroy = fn (WGPUQuerySet)

type WGPUProcQuerySetGetCount = fn (WGPUQuerySet) u32

type WGPUProcQuerySetGetType = fn (WGPUQuerySet) WGPUQueryType

type WGPUProcQuerySetSetLabel = fn (WGPUQuerySet, &i8)

type WGPUProcQuerySetReference = fn (WGPUQuerySet)

type WGPUProcQuerySetRelease = fn (WGPUQuerySet)

type WGPUProcQueueOnSubmittedWorkDone = fn (WGPUQueue, WGPUQueueWorkDoneCallback, voidptr)

type WGPUProcQueueSetLabel = fn (WGPUQueue, &i8)

type WGPUProcQueueSubmit = fn (WGPUQueue, usize, &WGPUCommandBuffer)

type WGPUProcQueueWriteBuffer = fn (WGPUQueue, WGPUBuffer, u64, voidptr, usize)

type WGPUProcQueueWriteTexture = fn (WGPUQueue, &WGPUImageCopyTexture, voidptr, usize, &WGPUTextureDataLayout, &WGPUExtent3D)

type WGPUProcQueueReference = fn (WGPUQueue)

type WGPUProcQueueRelease = fn (WGPUQueue)

type WGPUProcRenderBundleSetLabel = fn (WGPURenderBundle, &i8)

type WGPUProcRenderBundleReference = fn (WGPURenderBundle)

type WGPUProcRenderBundleRelease = fn (WGPURenderBundle)

type WGPUProcRenderBundleEncoderDraw = fn (WGPURenderBundleEncoder, u32, u32, u32, u32)

type WGPUProcRenderBundleEncoderDrawIndexed = fn (WGPURenderBundleEncoder, u32, u32, u32, int, u32)

type WGPUProcRenderBundleEncoderDrawIndexedIndirect = fn (WGPURenderBundleEncoder, WGPUBuffer, u64)

type WGPUProcRenderBundleEncoderDrawIndirect = fn (WGPURenderBundleEncoder, WGPUBuffer, u64)

type WGPUProcRenderBundleEncoderFinish = fn (WGPURenderBundleEncoder, &WGPURenderBundleDescriptor) WGPURenderBundle

type WGPUProcRenderBundleEncoderInsertDebugMarker = fn (WGPURenderBundleEncoder, &i8)

type WGPUProcRenderBundleEncoderPopDebugGroup = fn (WGPURenderBundleEncoder)

type WGPUProcRenderBundleEncoderPushDebugGroup = fn (WGPURenderBundleEncoder, &i8)

type WGPUProcRenderBundleEncoderSetBindGroup = fn (WGPURenderBundleEncoder, u32, WGPUBindGroup, usize, &u32)

type WGPUProcRenderBundleEncoderSetIndexBuffer = fn (WGPURenderBundleEncoder, WGPUBuffer, WGPUIndexFormat, u64, u64)

type WGPUProcRenderBundleEncoderSetLabel = fn (WGPURenderBundleEncoder, &i8)

type WGPUProcRenderBundleEncoderSetPipeline = fn (WGPURenderBundleEncoder, WGPURenderPipeline)

type WGPUProcRenderBundleEncoderSetVertexBuffer = fn (WGPURenderBundleEncoder, u32, WGPUBuffer, u64, u64)

type WGPUProcRenderBundleEncoderReference = fn (WGPURenderBundleEncoder)

type WGPUProcRenderBundleEncoderRelease = fn (WGPURenderBundleEncoder)

type WGPUProcRenderPassEncoderBeginOcclusionQuery = fn (WGPURenderPassEncoder, u32)

type WGPUProcRenderPassEncoderDraw = fn (WGPURenderPassEncoder, u32, u32, u32, u32)

type WGPUProcRenderPassEncoderDrawIndexed = fn (WGPURenderPassEncoder, u32, u32, u32, int, u32)

type WGPUProcRenderPassEncoderDrawIndexedIndirect = fn (WGPURenderPassEncoder, WGPUBuffer, u64)

type WGPUProcRenderPassEncoderDrawIndirect = fn (WGPURenderPassEncoder, WGPUBuffer, u64)

type WGPUProcRenderPassEncoderEnd = fn (WGPURenderPassEncoder)

type WGPUProcRenderPassEncoderEndOcclusionQuery = fn (WGPURenderPassEncoder)

type WGPUProcRenderPassEncoderExecuteBundles = fn (WGPURenderPassEncoder, usize, &WGPURenderBundle)

type WGPUProcRenderPassEncoderInsertDebugMarker = fn (WGPURenderPassEncoder, &i8)

type WGPUProcRenderPassEncoderPopDebugGroup = fn (WGPURenderPassEncoder)

type WGPUProcRenderPassEncoderPushDebugGroup = fn (WGPURenderPassEncoder, &i8)

type WGPUProcRenderPassEncoderSetBindGroup = fn (WGPURenderPassEncoder, u32, WGPUBindGroup, usize, &u32)

type WGPUProcRenderPassEncoderSetBlendConstant = fn (WGPURenderPassEncoder, &WGPUColor)

type WGPUProcRenderPassEncoderSetIndexBuffer = fn (WGPURenderPassEncoder, WGPUBuffer, WGPUIndexFormat, u64, u64)

type WGPUProcRenderPassEncoderSetLabel = fn (WGPURenderPassEncoder, &i8)

type WGPUProcRenderPassEncoderSetPipeline = fn (WGPURenderPassEncoder, WGPURenderPipeline)

type WGPUProcRenderPassEncoderSetScissorRect = fn (WGPURenderPassEncoder, u32, u32, u32, u32)

type WGPUProcRenderPassEncoderSetStencilReference = fn (WGPURenderPassEncoder, u32)

type WGPUProcRenderPassEncoderSetVertexBuffer = fn (WGPURenderPassEncoder, u32, WGPUBuffer, u64, u64)

type WGPUProcRenderPassEncoderSetViewport = fn (WGPURenderPassEncoder, f32, f32, f32, f32, f32, f32)

type WGPUProcRenderPassEncoderReference = fn (WGPURenderPassEncoder)

type WGPUProcRenderPassEncoderRelease = fn (WGPURenderPassEncoder)

type WGPUProcRenderPipelineGetBindGroupLayout = fn (WGPURenderPipeline, u32) WGPUBindGroupLayout

type WGPUProcRenderPipelineSetLabel = fn (WGPURenderPipeline, &i8)

type WGPUProcRenderPipelineReference = fn (WGPURenderPipeline)

type WGPUProcRenderPipelineRelease = fn (WGPURenderPipeline)

type WGPUProcSamplerSetLabel = fn (WGPUSampler, &i8)

type WGPUProcSamplerReference = fn (WGPUSampler)

type WGPUProcSamplerRelease = fn (WGPUSampler)

type WGPUProcShaderModuleGetCompilationInfo = fn (WGPUShaderModule, WGPUCompilationInfoCallback, voidptr)

type WGPUProcShaderModuleSetLabel = fn (WGPUShaderModule, &i8)

type WGPUProcShaderModuleReference = fn (WGPUShaderModule)

type WGPUProcShaderModuleRelease = fn (WGPUShaderModule)

type WGPUProcSurfaceConfigure = fn (WGPUSurface, &WGPUSurfaceConfiguration)

type WGPUProcSurfaceGetCapabilities = fn (WGPUSurface, WGPUAdapter, &WGPUSurfaceCapabilities)

type WGPUProcSurfaceGetCurrentTexture = fn (WGPUSurface, &WGPUSurfaceTexture)

type WGPUProcSurfaceGetPreferredFormat = fn (WGPUSurface, WGPUAdapter) WGPUTextureFormat

type WGPUProcSurfacePresent = fn (WGPUSurface)

type WGPUProcSurfaceUnconfigure = fn (WGPUSurface)

type WGPUProcSurfaceReference = fn (WGPUSurface)

type WGPUProcSurfaceRelease = fn (WGPUSurface)

type WGPUProcSurfaceCapabilitiesFreeMembers = fn (WGPUSurfaceCapabilities)

type WGPUProcTextureCreateView = fn (WGPUTexture, &WGPUTextureViewDescriptor) WGPUTextureView

type WGPUProcTextureDestroy = fn (WGPUTexture)

type WGPUProcTextureGetDepthOrArrayLayers = fn (WGPUTexture) u32

type WGPUProcTextureGetDimension = fn (WGPUTexture) WGPUTextureDimension

type WGPUProcTextureGetFormat = fn (WGPUTexture) WGPUTextureFormat

type WGPUProcTextureGetHeight = fn (WGPUTexture) u32

type WGPUProcTextureGetMipLevelCount = fn (WGPUTexture) u32

type WGPUProcTextureGetSampleCount = fn (WGPUTexture) u32

type WGPUProcTextureGetUsage = fn (WGPUTexture) WGPUTextureUsageFlags

type WGPUProcTextureGetWidth = fn (WGPUTexture) u32

type WGPUProcTextureSetLabel = fn (WGPUTexture, &i8)

type WGPUProcTextureReference = fn (WGPUTexture)

type WGPUProcTextureRelease = fn (WGPUTexture)

type WGPUProcTextureViewSetLabel = fn (WGPUTextureView, &i8)

type WGPUProcTextureViewReference = fn (WGPUTextureView)

type WGPUProcTextureViewRelease = fn (WGPUTextureView)

fn C.wgpuCreateInstance(descriptor &WGPUInstanceDescriptor) WGPUInstance

pub fn wgpucreateinstance(descriptor &WGPUInstanceDescriptor) WGPUInstance {
	return C.wgpuCreateInstance(descriptor)
}

fn C.wgpuGetProcAddress(device WGPUDevice, procname &i8) WGPUProc

pub fn wgpugetprocaddress(device WGPUDevice, procname &i8) WGPUProc {
	return C.wgpuGetProcAddress(device, procname)
}

fn C.wgpuAdapterEnumerateFeatures(adapter WGPUAdapter, features &WGPUFeatureName) usize

pub fn wgpuadapterenumeratefeatures(adapter WGPUAdapter, features &WGPUFeatureName) usize {
	return C.wgpuAdapterEnumerateFeatures(adapter, features)
}

fn C.wgpuAdapterGetLimits(adapter WGPUAdapter, limits &WGPUSupportedLimits) WGPUBool

pub fn wgpuadaptergetlimits(adapter WGPUAdapter, limits &WGPUSupportedLimits) WGPUBool {
	return C.wgpuAdapterGetLimits(adapter, limits)
}

fn C.wgpuAdapterGetProperties(adapter WGPUAdapter, properties &WGPUAdapterProperties)

pub fn wgpuadaptergetproperties(adapter WGPUAdapter, properties &WGPUAdapterProperties) {
	C.wgpuAdapterGetProperties(adapter, properties)
}

fn C.wgpuAdapterHasFeature(adapter WGPUAdapter, feature WGPUFeatureName) WGPUBool

pub fn wgpuadapterhasfeature(adapter WGPUAdapter, feature WGPUFeatureName) WGPUBool {
	return C.wgpuAdapterHasFeature(adapter, feature)
}

fn C.wgpuAdapterRequestDevice(adapter WGPUAdapter, descriptor &WGPUDeviceDescriptor, callback WGPURequestDeviceCallback, userdata voidptr)

pub fn wgpuadapterrequestdevice(adapter WGPUAdapter, descriptor &WGPUDeviceDescriptor, callback WGPURequestDeviceCallback, userdata voidptr) {
	C.wgpuAdapterRequestDevice(adapter, descriptor, callback, userdata)
}

fn C.wgpuAdapterReference(adapter WGPUAdapter)

pub fn wgpuadapterreference(adapter WGPUAdapter) {
	C.wgpuAdapterReference(adapter)
}

fn C.wgpuAdapterRelease(adapter WGPUAdapter)

pub fn wgpuadapterrelease(adapter WGPUAdapter) {
	C.wgpuAdapterRelease(adapter)
}

fn C.wgpuBindGroupSetLabel(bindgroup WGPUBindGroup, label &i8)

pub fn wgpubindgroupsetlabel(bindgroup WGPUBindGroup, label &i8) {
	C.wgpuBindGroupSetLabel(bindgroup, label)
}

fn C.wgpuBindGroupReference(bindgroup WGPUBindGroup)

pub fn wgpubindgroupreference(bindgroup WGPUBindGroup) {
	C.wgpuBindGroupReference(bindgroup)
}

fn C.wgpuBindGroupRelease(bindgroup WGPUBindGroup)

pub fn wgpubindgrouprelease(bindgroup WGPUBindGroup) {
	C.wgpuBindGroupRelease(bindgroup)
}

fn C.wgpuBindGroupLayoutSetLabel(bindgrouplayout WGPUBindGroupLayout, label &i8)

pub fn wgpubindgrouplayoutsetlabel(bindgrouplayout WGPUBindGroupLayout, label &i8) {
	C.wgpuBindGroupLayoutSetLabel(bindgrouplayout, label)
}

fn C.wgpuBindGroupLayoutReference(bindgrouplayout WGPUBindGroupLayout)

pub fn wgpubindgrouplayoutreference(bindgrouplayout WGPUBindGroupLayout) {
	C.wgpuBindGroupLayoutReference(bindgrouplayout)
}

fn C.wgpuBindGroupLayoutRelease(bindgrouplayout WGPUBindGroupLayout)

pub fn wgpubindgrouplayoutrelease(bindgrouplayout WGPUBindGroupLayout) {
	C.wgpuBindGroupLayoutRelease(bindgrouplayout)
}

fn C.wgpuBufferDestroy(buffer WGPUBuffer)

pub fn wgpubufferdestroy(buffer WGPUBuffer) {
	C.wgpuBufferDestroy(buffer)
}

fn C.wgpuBufferGetConstMappedRange(buffer WGPUBuffer, offset usize, size usize) voidptr

pub fn wgpubuffergetconstmappedrange(buffer WGPUBuffer, offset usize, size usize) voidptr {
	return C.wgpuBufferGetConstMappedRange(buffer, offset, size)
}

fn C.wgpuBufferGetMapState(buffer WGPUBuffer) WGPUBufferMapState

pub fn wgpubuffergetmapstate(buffer WGPUBuffer) WGPUBufferMapState {
	return C.wgpuBufferGetMapState(buffer)
}

fn C.wgpuBufferGetMappedRange(buffer WGPUBuffer, offset usize, size usize) voidptr

pub fn wgpubuffergetmappedrange(buffer WGPUBuffer, offset usize, size usize) voidptr {
	return C.wgpuBufferGetMappedRange(buffer, offset, size)
}

fn C.wgpuBufferGetSize(buffer WGPUBuffer) u64

pub fn wgpubuffergetsize(buffer WGPUBuffer) u64 {
	return C.wgpuBufferGetSize(buffer)
}

fn C.wgpuBufferGetUsage(buffer WGPUBuffer) WGPUBufferUsageFlags

pub fn wgpubuffergetusage(buffer WGPUBuffer) WGPUBufferUsageFlags {
	return C.wgpuBufferGetUsage(buffer)
}

fn C.wgpuBufferMapAsync(buffer WGPUBuffer, mode WGPUMapModeFlags, offset usize, size usize, callback WGPUBufferMapCallback, userdata voidptr)

pub fn wgpubuffermapasync(buffer WGPUBuffer, mode WGPUMapModeFlags, offset usize, size usize, callback WGPUBufferMapCallback, userdata voidptr) {
	C.wgpuBufferMapAsync(buffer, mode, offset, size, callback, userdata)
}

fn C.wgpuBufferSetLabel(buffer WGPUBuffer, label &i8)

pub fn wgpubuffersetlabel(buffer WGPUBuffer, label &i8) {
	C.wgpuBufferSetLabel(buffer, label)
}

fn C.wgpuBufferUnmap(buffer WGPUBuffer)

pub fn wgpubufferunmap(buffer WGPUBuffer) {
	C.wgpuBufferUnmap(buffer)
}

fn C.wgpuBufferReference(buffer WGPUBuffer)

pub fn wgpubufferreference(buffer WGPUBuffer) {
	C.wgpuBufferReference(buffer)
}

fn C.wgpuBufferRelease(buffer WGPUBuffer)

pub fn wgpubufferrelease(buffer WGPUBuffer) {
	C.wgpuBufferRelease(buffer)
}

fn C.wgpuCommandBufferSetLabel(commandbuffer WGPUCommandBuffer, label &i8)

pub fn wgpucommandbuffersetlabel(commandbuffer WGPUCommandBuffer, label &i8) {
	C.wgpuCommandBufferSetLabel(commandbuffer, label)
}

fn C.wgpuCommandBufferReference(commandbuffer WGPUCommandBuffer)

pub fn wgpucommandbufferreference(commandbuffer WGPUCommandBuffer) {
	C.wgpuCommandBufferReference(commandbuffer)
}

fn C.wgpuCommandBufferRelease(commandbuffer WGPUCommandBuffer)

pub fn wgpucommandbufferrelease(commandbuffer WGPUCommandBuffer) {
	C.wgpuCommandBufferRelease(commandbuffer)
}

fn C.wgpuCommandEncoderBeginComputePass(commandencoder WGPUCommandEncoder, descriptor &WGPUComputePassDescriptor) WGPUComputePassEncoder

pub fn wgpucommandencoderbegincomputepass(commandencoder WGPUCommandEncoder, descriptor &WGPUComputePassDescriptor) WGPUComputePassEncoder {
	return C.wgpuCommandEncoderBeginComputePass(commandencoder, descriptor)
}

fn C.wgpuCommandEncoderBeginRenderPass(commandencoder WGPUCommandEncoder, descriptor &WGPURenderPassDescriptor) WGPURenderPassEncoder

pub fn wgpucommandencoderbeginrenderpass(commandencoder WGPUCommandEncoder, descriptor &WGPURenderPassDescriptor) WGPURenderPassEncoder {
	return C.wgpuCommandEncoderBeginRenderPass(commandencoder, descriptor)
}

fn C.wgpuCommandEncoderClearBuffer(commandencoder WGPUCommandEncoder, buffer WGPUBuffer, offset u64, size u64)

pub fn wgpucommandencoderclearbuffer(commandencoder WGPUCommandEncoder, buffer WGPUBuffer, offset u64, size u64) {
	C.wgpuCommandEncoderClearBuffer(commandencoder, buffer, offset, size)
}

fn C.wgpuCommandEncoderCopyBufferToBuffer(commandencoder WGPUCommandEncoder, source WGPUBuffer, sourceoffset u64, destination WGPUBuffer, destinationoffset u64, size u64)

pub fn wgpucommandencodercopybuffertobuffer(commandencoder WGPUCommandEncoder, source WGPUBuffer, sourceoffset u64, destination WGPUBuffer, destinationoffset u64, size u64) {
	C.wgpuCommandEncoderCopyBufferToBuffer(commandencoder, source, sourceoffset, destination,
		destinationoffset, size)
}

fn C.wgpuCommandEncoderCopyBufferToTexture(commandencoder WGPUCommandEncoder, source &WGPUImageCopyBuffer, destination &WGPUImageCopyTexture, copysize &WGPUExtent3D)

pub fn wgpucommandencodercopybuffertotexture(commandencoder WGPUCommandEncoder, source &WGPUImageCopyBuffer, destination &WGPUImageCopyTexture, copysize &WGPUExtent3D) {
	C.wgpuCommandEncoderCopyBufferToTexture(commandencoder, source, destination, copysize)
}

fn C.wgpuCommandEncoderCopyTextureToBuffer(commandencoder WGPUCommandEncoder, source &WGPUImageCopyTexture, destination &WGPUImageCopyBuffer, copysize &WGPUExtent3D)

pub fn wgpucommandencodercopytexturetobuffer(commandencoder WGPUCommandEncoder, source &WGPUImageCopyTexture, destination &WGPUImageCopyBuffer, copysize &WGPUExtent3D) {
	C.wgpuCommandEncoderCopyTextureToBuffer(commandencoder, source, destination, copysize)
}

fn C.wgpuCommandEncoderCopyTextureToTexture(commandencoder WGPUCommandEncoder, source &WGPUImageCopyTexture, destination &WGPUImageCopyTexture, copysize &WGPUExtent3D)

pub fn wgpucommandencodercopytexturetotexture(commandencoder WGPUCommandEncoder, source &WGPUImageCopyTexture, destination &WGPUImageCopyTexture, copysize &WGPUExtent3D) {
	C.wgpuCommandEncoderCopyTextureToTexture(commandencoder, source, destination, copysize)
}

fn C.wgpuCommandEncoderFinish(commandencoder WGPUCommandEncoder, descriptor &WGPUCommandBufferDescriptor) WGPUCommandBuffer

pub fn wgpucommandencoderfinish(commandencoder WGPUCommandEncoder, descriptor &WGPUCommandBufferDescriptor) WGPUCommandBuffer {
	return C.wgpuCommandEncoderFinish(commandencoder, descriptor)
}

fn C.wgpuCommandEncoderInsertDebugMarker(commandencoder WGPUCommandEncoder, markerlabel &i8)

pub fn wgpucommandencoderinsertdebugmarker(commandencoder WGPUCommandEncoder, markerlabel &i8) {
	C.wgpuCommandEncoderInsertDebugMarker(commandencoder, markerlabel)
}

fn C.wgpuCommandEncoderPopDebugGroup(commandencoder WGPUCommandEncoder)

pub fn wgpucommandencoderpopdebuggroup(commandencoder WGPUCommandEncoder) {
	C.wgpuCommandEncoderPopDebugGroup(commandencoder)
}

fn C.wgpuCommandEncoderPushDebugGroup(commandencoder WGPUCommandEncoder, grouplabel &i8)

pub fn wgpucommandencoderpushdebuggroup(commandencoder WGPUCommandEncoder, grouplabel &i8) {
	C.wgpuCommandEncoderPushDebugGroup(commandencoder, grouplabel)
}

fn C.wgpuCommandEncoderResolveQuerySet(commandencoder WGPUCommandEncoder, queryset WGPUQuerySet, firstquery u32, querycount u32, destination WGPUBuffer, destinationoffset u64)

pub fn wgpucommandencoderresolvequeryset(commandencoder WGPUCommandEncoder, queryset WGPUQuerySet, firstquery u32, querycount u32, destination WGPUBuffer, destinationoffset u64) {
	C.wgpuCommandEncoderResolveQuerySet(commandencoder, queryset, firstquery, querycount,
		destination, destinationoffset)
}

fn C.wgpuCommandEncoderSetLabel(commandencoder WGPUCommandEncoder, label &i8)

pub fn wgpucommandencodersetlabel(commandencoder WGPUCommandEncoder, label &i8) {
	C.wgpuCommandEncoderSetLabel(commandencoder, label)
}

fn C.wgpuCommandEncoderWriteTimestamp(commandencoder WGPUCommandEncoder, queryset WGPUQuerySet, queryindex u32)

pub fn wgpucommandencoderwritetimestamp(commandencoder WGPUCommandEncoder, queryset WGPUQuerySet, queryindex u32) {
	C.wgpuCommandEncoderWriteTimestamp(commandencoder, queryset, queryindex)
}

fn C.wgpuCommandEncoderReference(commandencoder WGPUCommandEncoder)

pub fn wgpucommandencoderreference(commandencoder WGPUCommandEncoder) {
	C.wgpuCommandEncoderReference(commandencoder)
}

fn C.wgpuCommandEncoderRelease(commandencoder WGPUCommandEncoder)

pub fn wgpucommandencoderrelease(commandencoder WGPUCommandEncoder) {
	C.wgpuCommandEncoderRelease(commandencoder)
}

fn C.wgpuComputePassEncoderDispatchWorkgroups(computepassencoder WGPUComputePassEncoder, workgroupcountx u32, workgroupcounty u32, workgroupcountz u32)

pub fn wgpucomputepassencoderdispatchworkgroups(computepassencoder WGPUComputePassEncoder, workgroupcountx u32, workgroupcounty u32, workgroupcountz u32) {
	C.wgpuComputePassEncoderDispatchWorkgroups(computepassencoder, workgroupcountx, workgroupcounty,
		workgroupcountz)
}

fn C.wgpuComputePassEncoderDispatchWorkgroupsIndirect(computepassencoder WGPUComputePassEncoder, indirectbuffer WGPUBuffer, indirectoffset u64)

pub fn wgpucomputepassencoderdispatchworkgroupsindirect(computepassencoder WGPUComputePassEncoder, indirectbuffer WGPUBuffer, indirectoffset u64) {
	C.wgpuComputePassEncoderDispatchWorkgroupsIndirect(computepassencoder, indirectbuffer,
		indirectoffset)
}

fn C.wgpuComputePassEncoderEnd(computepassencoder WGPUComputePassEncoder)

pub fn wgpucomputepassencoderend(computepassencoder WGPUComputePassEncoder) {
	C.wgpuComputePassEncoderEnd(computepassencoder)
}

fn C.wgpuComputePassEncoderInsertDebugMarker(computepassencoder WGPUComputePassEncoder, markerlabel &i8)

pub fn wgpucomputepassencoderinsertdebugmarker(computepassencoder WGPUComputePassEncoder, markerlabel &i8) {
	C.wgpuComputePassEncoderInsertDebugMarker(computepassencoder, markerlabel)
}

fn C.wgpuComputePassEncoderPopDebugGroup(computepassencoder WGPUComputePassEncoder)

pub fn wgpucomputepassencoderpopdebuggroup(computepassencoder WGPUComputePassEncoder) {
	C.wgpuComputePassEncoderPopDebugGroup(computepassencoder)
}

fn C.wgpuComputePassEncoderPushDebugGroup(computepassencoder WGPUComputePassEncoder, grouplabel &i8)

pub fn wgpucomputepassencoderpushdebuggroup(computepassencoder WGPUComputePassEncoder, grouplabel &i8) {
	C.wgpuComputePassEncoderPushDebugGroup(computepassencoder, grouplabel)
}

fn C.wgpuComputePassEncoderSetBindGroup(computepassencoder WGPUComputePassEncoder, groupindex u32, group WGPUBindGroup, dynamicoffsetcount usize, dynamicoffsets &u32)

pub fn wgpucomputepassencodersetbindgroup(computepassencoder WGPUComputePassEncoder, groupindex u32, group WGPUBindGroup, dynamicoffsetcount usize, dynamicoffsets &u32) {
	C.wgpuComputePassEncoderSetBindGroup(computepassencoder, groupindex, group, dynamicoffsetcount,
		dynamicoffsets)
}

fn C.wgpuComputePassEncoderSetLabel(computepassencoder WGPUComputePassEncoder, label &i8)

pub fn wgpucomputepassencodersetlabel(computepassencoder WGPUComputePassEncoder, label &i8) {
	C.wgpuComputePassEncoderSetLabel(computepassencoder, label)
}

fn C.wgpuComputePassEncoderSetPipeline(computepassencoder WGPUComputePassEncoder, pipeline WGPUComputePipeline)

pub fn wgpucomputepassencodersetpipeline(computepassencoder WGPUComputePassEncoder, pipeline WGPUComputePipeline) {
	C.wgpuComputePassEncoderSetPipeline(computepassencoder, pipeline)
}

fn C.wgpuComputePassEncoderReference(computepassencoder WGPUComputePassEncoder)

pub fn wgpucomputepassencoderreference(computepassencoder WGPUComputePassEncoder) {
	C.wgpuComputePassEncoderReference(computepassencoder)
}

fn C.wgpuComputePassEncoderRelease(computepassencoder WGPUComputePassEncoder)

pub fn wgpucomputepassencoderrelease(computepassencoder WGPUComputePassEncoder) {
	C.wgpuComputePassEncoderRelease(computepassencoder)
}

fn C.wgpuComputePipelineGetBindGroupLayout(computepipeline WGPUComputePipeline, groupindex u32) WGPUBindGroupLayout

pub fn wgpucomputepipelinegetbindgrouplayout(computepipeline WGPUComputePipeline, groupindex u32) WGPUBindGroupLayout {
	return C.wgpuComputePipelineGetBindGroupLayout(computepipeline, groupindex)
}

fn C.wgpuComputePipelineSetLabel(computepipeline WGPUComputePipeline, label &i8)

pub fn wgpucomputepipelinesetlabel(computepipeline WGPUComputePipeline, label &i8) {
	C.wgpuComputePipelineSetLabel(computepipeline, label)
}

fn C.wgpuComputePipelineReference(computepipeline WGPUComputePipeline)

pub fn wgpucomputepipelinereference(computepipeline WGPUComputePipeline) {
	C.wgpuComputePipelineReference(computepipeline)
}

fn C.wgpuComputePipelineRelease(computepipeline WGPUComputePipeline)

pub fn wgpucomputepipelinerelease(computepipeline WGPUComputePipeline) {
	C.wgpuComputePipelineRelease(computepipeline)
}

fn C.wgpuDeviceCreateBindGroup(device WGPUDevice, descriptor &WGPUBindGroupDescriptor) WGPUBindGroup

pub fn wgpudevicecreatebindgroup(device WGPUDevice, descriptor &WGPUBindGroupDescriptor) WGPUBindGroup {
	return C.wgpuDeviceCreateBindGroup(device, descriptor)
}

fn C.wgpuDeviceCreateBindGroupLayout(device WGPUDevice, descriptor &WGPUBindGroupLayoutDescriptor) WGPUBindGroupLayout

pub fn wgpudevicecreatebindgrouplayout(device WGPUDevice, descriptor &WGPUBindGroupLayoutDescriptor) WGPUBindGroupLayout {
	return C.wgpuDeviceCreateBindGroupLayout(device, descriptor)
}

fn C.wgpuDeviceCreateBuffer(device WGPUDevice, descriptor &WGPUBufferDescriptor) WGPUBuffer

pub fn wgpudevicecreatebuffer(device WGPUDevice, descriptor &WGPUBufferDescriptor) WGPUBuffer {
	return C.wgpuDeviceCreateBuffer(device, descriptor)
}

fn C.wgpuDeviceCreateCommandEncoder(device WGPUDevice, descriptor &WGPUCommandEncoderDescriptor) WGPUCommandEncoder

pub fn wgpudevicecreatecommandencoder(device WGPUDevice, descriptor &WGPUCommandEncoderDescriptor) WGPUCommandEncoder {
	return C.wgpuDeviceCreateCommandEncoder(device, descriptor)
}

fn C.wgpuDeviceCreateComputePipeline(device WGPUDevice, descriptor &WGPUComputePipelineDescriptor) WGPUComputePipeline

pub fn wgpudevicecreatecomputepipeline(device WGPUDevice, descriptor &WGPUComputePipelineDescriptor) WGPUComputePipeline {
	return C.wgpuDeviceCreateComputePipeline(device, descriptor)
}

fn C.wgpuDeviceCreateComputePipelineAsync(device WGPUDevice, descriptor &WGPUComputePipelineDescriptor, callback WGPUCreateComputePipelineAsyncCallback, userdata voidptr)

pub fn wgpudevicecreatecomputepipelineasync(device WGPUDevice, descriptor &WGPUComputePipelineDescriptor, callback WGPUCreateComputePipelineAsyncCallback, userdata voidptr) {
	C.wgpuDeviceCreateComputePipelineAsync(device, descriptor, callback, userdata)
}

fn C.wgpuDeviceCreatePipelineLayout(device WGPUDevice, descriptor &WGPUPipelineLayoutDescriptor) WGPUPipelineLayout

pub fn wgpudevicecreatepipelinelayout(device WGPUDevice, descriptor &WGPUPipelineLayoutDescriptor) WGPUPipelineLayout {
	return C.wgpuDeviceCreatePipelineLayout(device, descriptor)
}

fn C.wgpuDeviceCreateQuerySet(device WGPUDevice, descriptor &WGPUQuerySetDescriptor) WGPUQuerySet

pub fn wgpudevicecreatequeryset(device WGPUDevice, descriptor &WGPUQuerySetDescriptor) WGPUQuerySet {
	return C.wgpuDeviceCreateQuerySet(device, descriptor)
}

fn C.wgpuDeviceCreateRenderBundleEncoder(device WGPUDevice, descriptor &WGPURenderBundleEncoderDescriptor) WGPURenderBundleEncoder

pub fn wgpudevicecreaterenderbundleencoder(device WGPUDevice, descriptor &WGPURenderBundleEncoderDescriptor) WGPURenderBundleEncoder {
	return C.wgpuDeviceCreateRenderBundleEncoder(device, descriptor)
}

fn C.wgpuDeviceCreateRenderPipeline(device WGPUDevice, descriptor &WGPURenderPipelineDescriptor) WGPURenderPipeline

pub fn wgpudevicecreaterenderpipeline(device WGPUDevice, descriptor &WGPURenderPipelineDescriptor) WGPURenderPipeline {
	return C.wgpuDeviceCreateRenderPipeline(device, descriptor)
}

fn C.wgpuDeviceCreateRenderPipelineAsync(device WGPUDevice, descriptor &WGPURenderPipelineDescriptor, callback WGPUCreateRenderPipelineAsyncCallback, userdata voidptr)

pub fn wgpudevicecreaterenderpipelineasync(device WGPUDevice, descriptor &WGPURenderPipelineDescriptor, callback WGPUCreateRenderPipelineAsyncCallback, userdata voidptr) {
	C.wgpuDeviceCreateRenderPipelineAsync(device, descriptor, callback, userdata)
}

fn C.wgpuDeviceCreateSampler(device WGPUDevice, descriptor &WGPUSamplerDescriptor) WGPUSampler

pub fn wgpudevicecreatesampler(device WGPUDevice, descriptor &WGPUSamplerDescriptor) WGPUSampler {
	return C.wgpuDeviceCreateSampler(device, descriptor)
}

fn C.wgpuDeviceCreateShaderModule(device WGPUDevice, descriptor &WGPUShaderModuleDescriptor) WGPUShaderModule

pub fn wgpudevicecreateshadermodule(device WGPUDevice, descriptor &WGPUShaderModuleDescriptor) WGPUShaderModule {
	return C.wgpuDeviceCreateShaderModule(device, descriptor)
}

fn C.wgpuDeviceCreateTexture(device WGPUDevice, descriptor &WGPUTextureDescriptor) WGPUTexture

pub fn wgpudevicecreatetexture(device WGPUDevice, descriptor &WGPUTextureDescriptor) WGPUTexture {
	return C.wgpuDeviceCreateTexture(device, descriptor)
}

fn C.wgpuDeviceDestroy(device WGPUDevice)

pub fn wgpudevicedestroy(device WGPUDevice) {
	C.wgpuDeviceDestroy(device)
}

fn C.wgpuDeviceEnumerateFeatures(device WGPUDevice, features &WGPUFeatureName) usize

pub fn wgpudeviceenumeratefeatures(device WGPUDevice, features &WGPUFeatureName) usize {
	return C.wgpuDeviceEnumerateFeatures(device, features)
}

fn C.wgpuDeviceGetLimits(device WGPUDevice, limits &WGPUSupportedLimits) WGPUBool

pub fn wgpudevicegetlimits(device WGPUDevice, limits &WGPUSupportedLimits) WGPUBool {
	return C.wgpuDeviceGetLimits(device, limits)
}

fn C.wgpuDeviceGetQueue(device WGPUDevice) WGPUQueue

pub fn wgpudevicegetqueue(device WGPUDevice) WGPUQueue {
	return C.wgpuDeviceGetQueue(device)
}

fn C.wgpuDeviceHasFeature(device WGPUDevice, feature WGPUFeatureName) WGPUBool

pub fn wgpudevicehasfeature(device WGPUDevice, feature WGPUFeatureName) WGPUBool {
	return C.wgpuDeviceHasFeature(device, feature)
}

fn C.wgpuDevicePopErrorScope(device WGPUDevice, callback WGPUErrorCallback, userdata voidptr)

pub fn wgpudevicepoperrorscope(device WGPUDevice, callback WGPUErrorCallback, userdata voidptr) {
	C.wgpuDevicePopErrorScope(device, callback, userdata)
}

fn C.wgpuDevicePushErrorScope(device WGPUDevice, filter WGPUErrorFilter)

pub fn wgpudevicepusherrorscope(device WGPUDevice, filter WGPUErrorFilter) {
	C.wgpuDevicePushErrorScope(device, filter)
}

fn C.wgpuDeviceSetLabel(device WGPUDevice, label &i8)

pub fn wgpudevicesetlabel(device WGPUDevice, label &i8) {
	C.wgpuDeviceSetLabel(device, label)
}

fn C.wgpuDeviceSetUncapturedErrorCallback(device WGPUDevice, callback WGPUErrorCallback, userdata voidptr)

pub fn wgpudevicesetuncapturederrorcallback(device WGPUDevice, callback WGPUErrorCallback, userdata voidptr) {
	C.wgpuDeviceSetUncapturedErrorCallback(device, callback, userdata)
}

fn C.wgpuDeviceReference(device WGPUDevice)

pub fn wgpudevicereference(device WGPUDevice) {
	C.wgpuDeviceReference(device)
}

fn C.wgpuDeviceRelease(device WGPUDevice)

pub fn wgpudevicerelease(device WGPUDevice) {
	C.wgpuDeviceRelease(device)
}

fn C.wgpuInstanceCreateSurface(instance WGPUInstance, descriptor &WGPUSurfaceDescriptor) WGPUSurface

pub fn wgpuinstancecreatesurface(instance WGPUInstance, descriptor &WGPUSurfaceDescriptor) WGPUSurface {
	return C.wgpuInstanceCreateSurface(instance, descriptor)
}

fn C.wgpuInstanceProcessEvents(instance WGPUInstance)

pub fn wgpuinstanceprocessevents(instance WGPUInstance) {
	C.wgpuInstanceProcessEvents(instance)
}

fn C.wgpuInstanceRequestAdapter(instance WGPUInstance, options &WGPURequestAdapterOptions, callback WGPURequestAdapterCallback, userdata voidptr)

pub fn wgpuinstancerequestadapter(instance WGPUInstance, options &WGPURequestAdapterOptions, callback WGPURequestAdapterCallback, userdata voidptr) {
	C.wgpuInstanceRequestAdapter(instance, options, callback, userdata)
}

fn C.wgpuInstanceReference(instance WGPUInstance)

pub fn wgpuinstancereference(instance WGPUInstance) {
	C.wgpuInstanceReference(instance)
}

fn C.wgpuInstanceRelease(instance WGPUInstance)

pub fn wgpuinstancerelease(instance WGPUInstance) {
	C.wgpuInstanceRelease(instance)
}

fn C.wgpuPipelineLayoutSetLabel(pipelinelayout WGPUPipelineLayout, label &i8)

pub fn wgpupipelinelayoutsetlabel(pipelinelayout WGPUPipelineLayout, label &i8) {
	C.wgpuPipelineLayoutSetLabel(pipelinelayout, label)
}

fn C.wgpuPipelineLayoutReference(pipelinelayout WGPUPipelineLayout)

pub fn wgpupipelinelayoutreference(pipelinelayout WGPUPipelineLayout) {
	C.wgpuPipelineLayoutReference(pipelinelayout)
}

fn C.wgpuPipelineLayoutRelease(pipelinelayout WGPUPipelineLayout)

pub fn wgpupipelinelayoutrelease(pipelinelayout WGPUPipelineLayout) {
	C.wgpuPipelineLayoutRelease(pipelinelayout)
}

fn C.wgpuQuerySetDestroy(queryset WGPUQuerySet)

pub fn wgpuquerysetdestroy(queryset WGPUQuerySet) {
	C.wgpuQuerySetDestroy(queryset)
}

fn C.wgpuQuerySetGetCount(queryset WGPUQuerySet) u32

pub fn wgpuquerysetgetcount(queryset WGPUQuerySet) u32 {
	return C.wgpuQuerySetGetCount(queryset)
}

fn C.wgpuQuerySetGetType(queryset WGPUQuerySet) WGPUQueryType

pub fn wgpuquerysetgettype(queryset WGPUQuerySet) WGPUQueryType {
	return C.wgpuQuerySetGetType(queryset)
}

fn C.wgpuQuerySetSetLabel(queryset WGPUQuerySet, label &i8)

pub fn wgpuquerysetsetlabel(queryset WGPUQuerySet, label &i8) {
	C.wgpuQuerySetSetLabel(queryset, label)
}

fn C.wgpuQuerySetReference(queryset WGPUQuerySet)

pub fn wgpuquerysetreference(queryset WGPUQuerySet) {
	C.wgpuQuerySetReference(queryset)
}

fn C.wgpuQuerySetRelease(queryset WGPUQuerySet)

pub fn wgpuquerysetrelease(queryset WGPUQuerySet) {
	C.wgpuQuerySetRelease(queryset)
}

fn C.wgpuQueueOnSubmittedWorkDone(queue WGPUQueue, callback WGPUQueueWorkDoneCallback, userdata voidptr)

pub fn wgpuqueueonsubmittedworkdone(queue WGPUQueue, callback WGPUQueueWorkDoneCallback, userdata voidptr) {
	C.wgpuQueueOnSubmittedWorkDone(queue, callback, userdata)
}

fn C.wgpuQueueSetLabel(queue WGPUQueue, label &i8)

pub fn wgpuqueuesetlabel(queue WGPUQueue, label &i8) {
	C.wgpuQueueSetLabel(queue, label)
}

fn C.wgpuQueueSubmit(queue WGPUQueue, commandcount usize, commands &WGPUCommandBuffer)

pub fn wgpuqueuesubmit(queue WGPUQueue, commandcount usize, commands &WGPUCommandBuffer) {
	C.wgpuQueueSubmit(queue, commandcount, commands)
}

fn C.wgpuQueueWriteBuffer(queue WGPUQueue, buffer WGPUBuffer, bufferoffset u64, data voidptr, size usize)

pub fn wgpuqueuewritebuffer(queue WGPUQueue, buffer WGPUBuffer, bufferoffset u64, data voidptr, size usize) {
	C.wgpuQueueWriteBuffer(queue, buffer, bufferoffset, data, size)
}

fn C.wgpuQueueWriteTexture(queue WGPUQueue, destination &WGPUImageCopyTexture, data voidptr, datasize usize, datalayout &WGPUTextureDataLayout, writesize &WGPUExtent3D)

pub fn wgpuqueuewritetexture(queue WGPUQueue, destination &WGPUImageCopyTexture, data voidptr, datasize usize, datalayout &WGPUTextureDataLayout, writesize &WGPUExtent3D) {
	C.wgpuQueueWriteTexture(queue, destination, data, datasize, datalayout, writesize)
}

fn C.wgpuQueueReference(queue WGPUQueue)

pub fn wgpuqueuereference(queue WGPUQueue) {
	C.wgpuQueueReference(queue)
}

fn C.wgpuQueueRelease(queue WGPUQueue)

pub fn wgpuqueuerelease(queue WGPUQueue) {
	C.wgpuQueueRelease(queue)
}

fn C.wgpuRenderBundleSetLabel(renderbundle WGPURenderBundle, label &i8)

pub fn wgpurenderbundlesetlabel(renderbundle WGPURenderBundle, label &i8) {
	C.wgpuRenderBundleSetLabel(renderbundle, label)
}

fn C.wgpuRenderBundleReference(renderbundle WGPURenderBundle)

pub fn wgpurenderbundlereference(renderbundle WGPURenderBundle) {
	C.wgpuRenderBundleReference(renderbundle)
}

fn C.wgpuRenderBundleRelease(renderbundle WGPURenderBundle)

pub fn wgpurenderbundlerelease(renderbundle WGPURenderBundle) {
	C.wgpuRenderBundleRelease(renderbundle)
}

fn C.wgpuRenderBundleEncoderDraw(renderbundleencoder WGPURenderBundleEncoder, vertexcount u32, instancecount u32, firstvertex u32, firstinstance u32)

pub fn wgpurenderbundleencoderdraw(renderbundleencoder WGPURenderBundleEncoder, vertexcount u32, instancecount u32, firstvertex u32, firstinstance u32) {
	C.wgpuRenderBundleEncoderDraw(renderbundleencoder, vertexcount, instancecount, firstvertex,
		firstinstance)
}

fn C.wgpuRenderBundleEncoderDrawIndexed(renderbundleencoder WGPURenderBundleEncoder, indexcount u32, instancecount u32, firstindex u32, basevertex int, firstinstance u32)

pub fn wgpurenderbundleencoderdrawindexed(renderbundleencoder WGPURenderBundleEncoder, indexcount u32, instancecount u32, firstindex u32, basevertex int, firstinstance u32) {
	C.wgpuRenderBundleEncoderDrawIndexed(renderbundleencoder, indexcount, instancecount,
		firstindex, basevertex, firstinstance)
}

fn C.wgpuRenderBundleEncoderDrawIndexedIndirect(renderbundleencoder WGPURenderBundleEncoder, indirectbuffer WGPUBuffer, indirectoffset u64)

pub fn wgpurenderbundleencoderdrawindexedindirect(renderbundleencoder WGPURenderBundleEncoder, indirectbuffer WGPUBuffer, indirectoffset u64) {
	C.wgpuRenderBundleEncoderDrawIndexedIndirect(renderbundleencoder, indirectbuffer,
		indirectoffset)
}

fn C.wgpuRenderBundleEncoderDrawIndirect(renderbundleencoder WGPURenderBundleEncoder, indirectbuffer WGPUBuffer, indirectoffset u64)

pub fn wgpurenderbundleencoderdrawindirect(renderbundleencoder WGPURenderBundleEncoder, indirectbuffer WGPUBuffer, indirectoffset u64) {
	C.wgpuRenderBundleEncoderDrawIndirect(renderbundleencoder, indirectbuffer, indirectoffset)
}

fn C.wgpuRenderBundleEncoderFinish(renderbundleencoder WGPURenderBundleEncoder, descriptor &WGPURenderBundleDescriptor) WGPURenderBundle

pub fn wgpurenderbundleencoderfinish(renderbundleencoder WGPURenderBundleEncoder, descriptor &WGPURenderBundleDescriptor) WGPURenderBundle {
	return C.wgpuRenderBundleEncoderFinish(renderbundleencoder, descriptor)
}

fn C.wgpuRenderBundleEncoderInsertDebugMarker(renderbundleencoder WGPURenderBundleEncoder, markerlabel &i8)

pub fn wgpurenderbundleencoderinsertdebugmarker(renderbundleencoder WGPURenderBundleEncoder, markerlabel &i8) {
	C.wgpuRenderBundleEncoderInsertDebugMarker(renderbundleencoder, markerlabel)
}

fn C.wgpuRenderBundleEncoderPopDebugGroup(renderbundleencoder WGPURenderBundleEncoder)

pub fn wgpurenderbundleencoderpopdebuggroup(renderbundleencoder WGPURenderBundleEncoder) {
	C.wgpuRenderBundleEncoderPopDebugGroup(renderbundleencoder)
}

fn C.wgpuRenderBundleEncoderPushDebugGroup(renderbundleencoder WGPURenderBundleEncoder, grouplabel &i8)

pub fn wgpurenderbundleencoderpushdebuggroup(renderbundleencoder WGPURenderBundleEncoder, grouplabel &i8) {
	C.wgpuRenderBundleEncoderPushDebugGroup(renderbundleencoder, grouplabel)
}

fn C.wgpuRenderBundleEncoderSetBindGroup(renderbundleencoder WGPURenderBundleEncoder, groupindex u32, group WGPUBindGroup, dynamicoffsetcount usize, dynamicoffsets &u32)

pub fn wgpurenderbundleencodersetbindgroup(renderbundleencoder WGPURenderBundleEncoder, groupindex u32, group WGPUBindGroup, dynamicoffsetcount usize, dynamicoffsets &u32) {
	C.wgpuRenderBundleEncoderSetBindGroup(renderbundleencoder, groupindex, group, dynamicoffsetcount,
		dynamicoffsets)
}

fn C.wgpuRenderBundleEncoderSetIndexBuffer(renderbundleencoder WGPURenderBundleEncoder, buffer WGPUBuffer, format WGPUIndexFormat, offset u64, size u64)

pub fn wgpurenderbundleencodersetindexbuffer(renderbundleencoder WGPURenderBundleEncoder, buffer WGPUBuffer, format WGPUIndexFormat, offset u64, size u64) {
	C.wgpuRenderBundleEncoderSetIndexBuffer(renderbundleencoder, buffer, format, offset,
		size)
}

fn C.wgpuRenderBundleEncoderSetLabel(renderbundleencoder WGPURenderBundleEncoder, label &i8)

pub fn wgpurenderbundleencodersetlabel(renderbundleencoder WGPURenderBundleEncoder, label &i8) {
	C.wgpuRenderBundleEncoderSetLabel(renderbundleencoder, label)
}

fn C.wgpuRenderBundleEncoderSetPipeline(renderbundleencoder WGPURenderBundleEncoder, pipeline WGPURenderPipeline)

pub fn wgpurenderbundleencodersetpipeline(renderbundleencoder WGPURenderBundleEncoder, pipeline WGPURenderPipeline) {
	C.wgpuRenderBundleEncoderSetPipeline(renderbundleencoder, pipeline)
}

fn C.wgpuRenderBundleEncoderSetVertexBuffer(renderbundleencoder WGPURenderBundleEncoder, slot u32, buffer WGPUBuffer, offset u64, size u64)

pub fn wgpurenderbundleencodersetvertexbuffer(renderbundleencoder WGPURenderBundleEncoder, slot u32, buffer WGPUBuffer, offset u64, size u64) {
	C.wgpuRenderBundleEncoderSetVertexBuffer(renderbundleencoder, slot, buffer, offset,
		size)
}

fn C.wgpuRenderBundleEncoderReference(renderbundleencoder WGPURenderBundleEncoder)

pub fn wgpurenderbundleencoderreference(renderbundleencoder WGPURenderBundleEncoder) {
	C.wgpuRenderBundleEncoderReference(renderbundleencoder)
}

fn C.wgpuRenderBundleEncoderRelease(renderbundleencoder WGPURenderBundleEncoder)

pub fn wgpurenderbundleencoderrelease(renderbundleencoder WGPURenderBundleEncoder) {
	C.wgpuRenderBundleEncoderRelease(renderbundleencoder)
}

fn C.wgpuRenderPassEncoderBeginOcclusionQuery(renderpassencoder WGPURenderPassEncoder, queryindex u32)

pub fn wgpurenderpassencoderbeginocclusionquery(renderpassencoder WGPURenderPassEncoder, queryindex u32) {
	C.wgpuRenderPassEncoderBeginOcclusionQuery(renderpassencoder, queryindex)
}

fn C.wgpuRenderPassEncoderDraw(renderpassencoder WGPURenderPassEncoder, vertexcount u32, instancecount u32, firstvertex u32, firstinstance u32)

pub fn wgpurenderpassencoderdraw(renderpassencoder WGPURenderPassEncoder, vertexcount u32, instancecount u32, firstvertex u32, firstinstance u32) {
	C.wgpuRenderPassEncoderDraw(renderpassencoder, vertexcount, instancecount, firstvertex,
		firstinstance)
}

fn C.wgpuRenderPassEncoderDrawIndexed(renderpassencoder WGPURenderPassEncoder, indexcount u32, instancecount u32, firstindex u32, basevertex int, firstinstance u32)

pub fn wgpurenderpassencoderdrawindexed(renderpassencoder WGPURenderPassEncoder, indexcount u32, instancecount u32, firstindex u32, basevertex int, firstinstance u32) {
	C.wgpuRenderPassEncoderDrawIndexed(renderpassencoder, indexcount, instancecount, firstindex,
		basevertex, firstinstance)
}

fn C.wgpuRenderPassEncoderDrawIndexedIndirect(renderpassencoder WGPURenderPassEncoder, indirectbuffer WGPUBuffer, indirectoffset u64)

pub fn wgpurenderpassencoderdrawindexedindirect(renderpassencoder WGPURenderPassEncoder, indirectbuffer WGPUBuffer, indirectoffset u64) {
	C.wgpuRenderPassEncoderDrawIndexedIndirect(renderpassencoder, indirectbuffer, indirectoffset)
}

fn C.wgpuRenderPassEncoderDrawIndirect(renderpassencoder WGPURenderPassEncoder, indirectbuffer WGPUBuffer, indirectoffset u64)

pub fn wgpurenderpassencoderdrawindirect(renderpassencoder WGPURenderPassEncoder, indirectbuffer WGPUBuffer, indirectoffset u64) {
	C.wgpuRenderPassEncoderDrawIndirect(renderpassencoder, indirectbuffer, indirectoffset)
}

fn C.wgpuRenderPassEncoderEnd(renderpassencoder WGPURenderPassEncoder)

pub fn wgpurenderpassencoderend(renderpassencoder WGPURenderPassEncoder) {
	C.wgpuRenderPassEncoderEnd(renderpassencoder)
}

fn C.wgpuRenderPassEncoderEndOcclusionQuery(renderpassencoder WGPURenderPassEncoder)

pub fn wgpurenderpassencoderendocclusionquery(renderpassencoder WGPURenderPassEncoder) {
	C.wgpuRenderPassEncoderEndOcclusionQuery(renderpassencoder)
}

fn C.wgpuRenderPassEncoderExecuteBundles(renderpassencoder WGPURenderPassEncoder, bundlecount usize, bundles &WGPURenderBundle)

pub fn wgpurenderpassencoderexecutebundles(renderpassencoder WGPURenderPassEncoder, bundlecount usize, bundles &WGPURenderBundle) {
	C.wgpuRenderPassEncoderExecuteBundles(renderpassencoder, bundlecount, bundles)
}

fn C.wgpuRenderPassEncoderInsertDebugMarker(renderpassencoder WGPURenderPassEncoder, markerlabel &i8)

pub fn wgpurenderpassencoderinsertdebugmarker(renderpassencoder WGPURenderPassEncoder, markerlabel &i8) {
	C.wgpuRenderPassEncoderInsertDebugMarker(renderpassencoder, markerlabel)
}

fn C.wgpuRenderPassEncoderPopDebugGroup(renderpassencoder WGPURenderPassEncoder)

pub fn wgpurenderpassencoderpopdebuggroup(renderpassencoder WGPURenderPassEncoder) {
	C.wgpuRenderPassEncoderPopDebugGroup(renderpassencoder)
}

fn C.wgpuRenderPassEncoderPushDebugGroup(renderpassencoder WGPURenderPassEncoder, grouplabel &i8)

pub fn wgpurenderpassencoderpushdebuggroup(renderpassencoder WGPURenderPassEncoder, grouplabel &i8) {
	C.wgpuRenderPassEncoderPushDebugGroup(renderpassencoder, grouplabel)
}

fn C.wgpuRenderPassEncoderSetBindGroup(renderpassencoder WGPURenderPassEncoder, groupindex u32, group WGPUBindGroup, dynamicoffsetcount usize, dynamicoffsets &u32)

pub fn wgpurenderpassencodersetbindgroup(renderpassencoder WGPURenderPassEncoder, groupindex u32, group WGPUBindGroup, dynamicoffsetcount usize, dynamicoffsets &u32) {
	C.wgpuRenderPassEncoderSetBindGroup(renderpassencoder, groupindex, group, dynamicoffsetcount,
		dynamicoffsets)
}

fn C.wgpuRenderPassEncoderSetBlendConstant(renderpassencoder WGPURenderPassEncoder, color &WGPUColor)

pub fn wgpurenderpassencodersetblendconstant(renderpassencoder WGPURenderPassEncoder, color &WGPUColor) {
	C.wgpuRenderPassEncoderSetBlendConstant(renderpassencoder, color)
}

fn C.wgpuRenderPassEncoderSetIndexBuffer(renderpassencoder WGPURenderPassEncoder, buffer WGPUBuffer, format WGPUIndexFormat, offset u64, size u64)

pub fn wgpurenderpassencodersetindexbuffer(renderpassencoder WGPURenderPassEncoder, buffer WGPUBuffer, format WGPUIndexFormat, offset u64, size u64) {
	C.wgpuRenderPassEncoderSetIndexBuffer(renderpassencoder, buffer, format, offset, size)
}

fn C.wgpuRenderPassEncoderSetLabel(renderpassencoder WGPURenderPassEncoder, label &i8)

pub fn wgpurenderpassencodersetlabel(renderpassencoder WGPURenderPassEncoder, label &i8) {
	C.wgpuRenderPassEncoderSetLabel(renderpassencoder, label)
}

fn C.wgpuRenderPassEncoderSetPipeline(renderpassencoder WGPURenderPassEncoder, pipeline WGPURenderPipeline)

pub fn wgpurenderpassencodersetpipeline(renderpassencoder WGPURenderPassEncoder, pipeline WGPURenderPipeline) {
	C.wgpuRenderPassEncoderSetPipeline(renderpassencoder, pipeline)
}

fn C.wgpuRenderPassEncoderSetScissorRect(renderpassencoder WGPURenderPassEncoder, x u32, y u32, width u32, height u32)

pub fn wgpurenderpassencodersetscissorrect(renderpassencoder WGPURenderPassEncoder, x u32, y u32, width u32, height u32) {
	C.wgpuRenderPassEncoderSetScissorRect(renderpassencoder, x, y, width, height)
}

fn C.wgpuRenderPassEncoderSetStencilReference(renderpassencoder WGPURenderPassEncoder, reference u32)

pub fn wgpurenderpassencodersetstencilreference(renderpassencoder WGPURenderPassEncoder, reference u32) {
	C.wgpuRenderPassEncoderSetStencilReference(renderpassencoder, reference)
}

fn C.wgpuRenderPassEncoderSetVertexBuffer(renderpassencoder WGPURenderPassEncoder, slot u32, buffer WGPUBuffer, offset u64, size u64)

pub fn wgpurenderpassencodersetvertexbuffer(renderpassencoder WGPURenderPassEncoder, slot u32, buffer WGPUBuffer, offset u64, size u64) {
	C.wgpuRenderPassEncoderSetVertexBuffer(renderpassencoder, slot, buffer, offset, size)
}

fn C.wgpuRenderPassEncoderSetViewport(renderpassencoder WGPURenderPassEncoder, x f32, y f32, width f32, height f32, mindepth f32, maxdepth f32)

pub fn wgpurenderpassencodersetviewport(renderpassencoder WGPURenderPassEncoder, x f32, y f32, width f32, height f32, mindepth f32, maxdepth f32) {
	C.wgpuRenderPassEncoderSetViewport(renderpassencoder, x, y, width, height, mindepth,
		maxdepth)
}

fn C.wgpuRenderPassEncoderReference(renderpassencoder WGPURenderPassEncoder)

pub fn wgpurenderpassencoderreference(renderpassencoder WGPURenderPassEncoder) {
	C.wgpuRenderPassEncoderReference(renderpassencoder)
}

fn C.wgpuRenderPassEncoderRelease(renderpassencoder WGPURenderPassEncoder)

pub fn wgpurenderpassencoderrelease(renderpassencoder WGPURenderPassEncoder) {
	C.wgpuRenderPassEncoderRelease(renderpassencoder)
}

fn C.wgpuRenderPipelineGetBindGroupLayout(renderpipeline WGPURenderPipeline, groupindex u32) WGPUBindGroupLayout

pub fn wgpurenderpipelinegetbindgrouplayout(renderpipeline WGPURenderPipeline, groupindex u32) WGPUBindGroupLayout {
	return C.wgpuRenderPipelineGetBindGroupLayout(renderpipeline, groupindex)
}

fn C.wgpuRenderPipelineSetLabel(renderpipeline WGPURenderPipeline, label &i8)

pub fn wgpurenderpipelinesetlabel(renderpipeline WGPURenderPipeline, label &i8) {
	C.wgpuRenderPipelineSetLabel(renderpipeline, label)
}

fn C.wgpuRenderPipelineReference(renderpipeline WGPURenderPipeline)

pub fn wgpurenderpipelinereference(renderpipeline WGPURenderPipeline) {
	C.wgpuRenderPipelineReference(renderpipeline)
}

fn C.wgpuRenderPipelineRelease(renderpipeline WGPURenderPipeline)

pub fn wgpurenderpipelinerelease(renderpipeline WGPURenderPipeline) {
	C.wgpuRenderPipelineRelease(renderpipeline)
}

fn C.wgpuSamplerSetLabel(sampler WGPUSampler, label &i8)

pub fn wgpusamplersetlabel(sampler WGPUSampler, label &i8) {
	C.wgpuSamplerSetLabel(sampler, label)
}

fn C.wgpuSamplerReference(sampler WGPUSampler)

pub fn wgpusamplerreference(sampler WGPUSampler) {
	C.wgpuSamplerReference(sampler)
}

fn C.wgpuSamplerRelease(sampler WGPUSampler)

pub fn wgpusamplerrelease(sampler WGPUSampler) {
	C.wgpuSamplerRelease(sampler)
}

fn C.wgpuShaderModuleGetCompilationInfo(shadermodule WGPUShaderModule, callback WGPUCompilationInfoCallback, userdata voidptr)

pub fn wgpushadermodulegetcompilationinfo(shadermodule WGPUShaderModule, callback WGPUCompilationInfoCallback, userdata voidptr) {
	C.wgpuShaderModuleGetCompilationInfo(shadermodule, callback, userdata)
}

fn C.wgpuShaderModuleSetLabel(shadermodule WGPUShaderModule, label &i8)

pub fn wgpushadermodulesetlabel(shadermodule WGPUShaderModule, label &i8) {
	C.wgpuShaderModuleSetLabel(shadermodule, label)
}

fn C.wgpuShaderModuleReference(shadermodule WGPUShaderModule)

pub fn wgpushadermodulereference(shadermodule WGPUShaderModule) {
	C.wgpuShaderModuleReference(shadermodule)
}

fn C.wgpuShaderModuleRelease(shadermodule WGPUShaderModule)

pub fn wgpushadermodulerelease(shadermodule WGPUShaderModule) {
	C.wgpuShaderModuleRelease(shadermodule)
}

fn C.wgpuSurfaceConfigure(surface WGPUSurface, config &WGPUSurfaceConfiguration)

pub fn wgpusurfaceconfigure(surface WGPUSurface, config &WGPUSurfaceConfiguration) {
	C.wgpuSurfaceConfigure(surface, config)
}

fn C.wgpuSurfaceGetCapabilities(surface WGPUSurface, adapter WGPUAdapter, capabilities &WGPUSurfaceCapabilities)

pub fn wgpusurfacegetcapabilities(surface WGPUSurface, adapter WGPUAdapter, capabilities &WGPUSurfaceCapabilities) {
	C.wgpuSurfaceGetCapabilities(surface, adapter, capabilities)
}

fn C.wgpuSurfaceGetCurrentTexture(surface WGPUSurface, surfacetexture &WGPUSurfaceTexture)

pub fn wgpusurfacegetcurrenttexture(surface WGPUSurface, surfacetexture &WGPUSurfaceTexture) {
	C.wgpuSurfaceGetCurrentTexture(surface, surfacetexture)
}

fn C.wgpuSurfaceGetPreferredFormat(surface WGPUSurface, adapter WGPUAdapter) WGPUTextureFormat

pub fn wgpusurfacegetpreferredformat(surface WGPUSurface, adapter WGPUAdapter) WGPUTextureFormat {
	return C.wgpuSurfaceGetPreferredFormat(surface, adapter)
}

fn C.wgpuSurfacePresent(surface WGPUSurface)

pub fn wgpusurfacepresent(surface WGPUSurface) {
	C.wgpuSurfacePresent(surface)
}

fn C.wgpuSurfaceUnconfigure(surface WGPUSurface)

pub fn wgpusurfaceunconfigure(surface WGPUSurface) {
	C.wgpuSurfaceUnconfigure(surface)
}

fn C.wgpuSurfaceReference(surface WGPUSurface)

pub fn wgpusurfacereference(surface WGPUSurface) {
	C.wgpuSurfaceReference(surface)
}

fn C.wgpuSurfaceRelease(surface WGPUSurface)

pub fn wgpusurfacerelease(surface WGPUSurface) {
	C.wgpuSurfaceRelease(surface)
}

fn C.wgpuSurfaceCapabilitiesFreeMembers(capabilities WGPUSurfaceCapabilities)

pub fn wgpusurfacecapabilitiesfreemembers(capabilities WGPUSurfaceCapabilities) {
	C.wgpuSurfaceCapabilitiesFreeMembers(capabilities)
}

fn C.wgpuTextureCreateView(texture WGPUTexture, descriptor &WGPUTextureViewDescriptor) WGPUTextureView

pub fn wgputexturecreateview(texture WGPUTexture, descriptor &WGPUTextureViewDescriptor) WGPUTextureView {
	return C.wgpuTextureCreateView(texture, descriptor)
}

fn C.wgpuTextureDestroy(texture WGPUTexture)

pub fn wgputexturedestroy(texture WGPUTexture) {
	C.wgpuTextureDestroy(texture)
}

fn C.wgpuTextureGetDepthOrArrayLayers(texture WGPUTexture) u32

pub fn wgputexturegetdepthorarraylayers(texture WGPUTexture) u32 {
	return C.wgpuTextureGetDepthOrArrayLayers(texture)
}

fn C.wgpuTextureGetDimension(texture WGPUTexture) WGPUTextureDimension

pub fn wgputexturegetdimension(texture WGPUTexture) WGPUTextureDimension {
	return C.wgpuTextureGetDimension(texture)
}

fn C.wgpuTextureGetFormat(texture WGPUTexture) WGPUTextureFormat

pub fn wgputexturegetformat(texture WGPUTexture) WGPUTextureFormat {
	return C.wgpuTextureGetFormat(texture)
}

fn C.wgpuTextureGetHeight(texture WGPUTexture) u32

pub fn wgputexturegetheight(texture WGPUTexture) u32 {
	return C.wgpuTextureGetHeight(texture)
}

fn C.wgpuTextureGetMipLevelCount(texture WGPUTexture) u32

pub fn wgputexturegetmiplevelcount(texture WGPUTexture) u32 {
	return C.wgpuTextureGetMipLevelCount(texture)
}

fn C.wgpuTextureGetSampleCount(texture WGPUTexture) u32

pub fn wgputexturegetsamplecount(texture WGPUTexture) u32 {
	return C.wgpuTextureGetSampleCount(texture)
}

fn C.wgpuTextureGetUsage(texture WGPUTexture) WGPUTextureUsageFlags

pub fn wgputexturegetusage(texture WGPUTexture) WGPUTextureUsageFlags {
	return C.wgpuTextureGetUsage(texture)
}

fn C.wgpuTextureGetWidth(texture WGPUTexture) u32

pub fn wgputexturegetwidth(texture WGPUTexture) u32 {
	return C.wgpuTextureGetWidth(texture)
}

fn C.wgpuTextureSetLabel(texture WGPUTexture, label &i8)

pub fn wgputexturesetlabel(texture WGPUTexture, label &i8) {
	C.wgpuTextureSetLabel(texture, label)
}

fn C.wgpuTextureReference(texture WGPUTexture)

pub fn wgputexturereference(texture WGPUTexture) {
	C.wgpuTextureReference(texture)
}

fn C.wgpuTextureRelease(texture WGPUTexture)

pub fn wgputexturerelease(texture WGPUTexture) {
	C.wgpuTextureRelease(texture)
}

fn C.wgpuTextureViewSetLabel(textureview WGPUTextureView, label &i8)

pub fn wgputextureviewsetlabel(textureview WGPUTextureView, label &i8) {
	C.wgpuTextureViewSetLabel(textureview, label)
}

fn C.wgpuTextureViewReference(textureview WGPUTextureView)

pub fn wgputextureviewreference(textureview WGPUTextureView) {
	C.wgpuTextureViewReference(textureview)
}

fn C.wgpuTextureViewRelease(textureview WGPUTextureView)

pub fn wgputextureviewrelease(textureview WGPUTextureView) {
	C.wgpuTextureViewRelease(textureview)
}
