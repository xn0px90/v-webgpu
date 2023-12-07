@[translated]
module webgpu

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
	nextInChain       &WGPUChainedStructOut
	vendorID          u32
	vendorName        &i8
	architecture      &i8
	deviceID          u32
	name              &i8
	driverDescription &i8
	adapterType       WGPUAdapterType
	backendType       WGPUBackendType
}

struct WGPUBindGroupEntry {
	nextInChain &WGPUChainedStruct
	binding     u32
	buffer      WGPUBuffer
	offset      u64
	size        u64
	sampler     WGPUSampler
	textureView WGPUTextureView
}

struct WGPUBlendComponent {
	operation WGPUBlendOperation
	srcFactor WGPUBlendFactor
	dstFactor WGPUBlendFactor
}

struct WGPUBufferBindingLayout {
	nextInChain      &WGPUChainedStruct
	type_            WGPUBufferBindingType
	hasDynamicOffset WGPUBool
	minBindingSize   u64
}

struct WGPUBufferDescriptor {
	nextInChain      &WGPUChainedStruct
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
	nextInChain &WGPUChainedStruct
	label       &i8
}

struct WGPUCommandEncoderDescriptor {
	nextInChain &WGPUChainedStruct
	label       &i8
}

struct WGPUCompilationMessage {
	nextInChain  &WGPUChainedStruct
	message      &i8
	type_        WGPUCompilationMessageType
	lineNum      u64
	linePos      u64
	offset       u64
	length       u64
	utf16LinePos u64
	utf16Offset  u64
	utf16Length  u64
}

struct WGPUComputePassTimestampWrites {
	querySet                  WGPUQuerySet
	beginningOfPassWriteIndex u32
	endOfPassWriteIndex       u32
}

struct WGPUConstantEntry {
	nextInChain &WGPUChainedStruct
	key         &i8
	value       f64
}

struct WGPUExtent3D {
	width              u32
	height             u32
	depthOrArrayLayers u32
}

struct WGPUInstanceDescriptor {
	nextInChain &WGPUChainedStruct
}

struct WGPULimits {
	maxTextureDimension1D                     u32
	maxTextureDimension2D                     u32
	maxTextureDimension3D                     u32
	maxTextureArrayLayers                     u32
	maxBindGroups                             u32
	maxBindGroupsPlusVertexBuffers            u32
	maxBindingsPerBindGroup                   u32
	maxDynamicUniformBuffersPerPipelineLayout u32
	maxDynamicStorageBuffersPerPipelineLayout u32
	maxSampledTexturesPerShaderStage          u32
	maxSamplersPerShaderStage                 u32
	maxStorageBuffersPerShaderStage           u32
	maxStorageTexturesPerShaderStage          u32
	maxUniformBuffersPerShaderStage           u32
	maxUniformBufferBindingSize               u64
	maxStorageBufferBindingSize               u64
	minUniformBufferOffsetAlignment           u32
	minStorageBufferOffsetAlignment           u32
	maxVertexBuffers                          u32
	maxBufferSize                             u64
	maxVertexAttributes                       u32
	maxVertexBufferArrayStride                u32
	maxInterStageShaderComponents             u32
	maxInterStageShaderVariables              u32
	maxColorAttachments                       u32
	maxColorAttachmentBytesPerSample          u32
	maxComputeWorkgroupStorageSize            u32
	maxComputeInvocationsPerWorkgroup         u32
	maxComputeWorkgroupSizeX                  u32
	maxComputeWorkgroupSizeY                  u32
	maxComputeWorkgroupSizeZ                  u32
	maxComputeWorkgroupsPerDimension          u32
}

struct WGPUMultisampleState {
	nextInChain            &WGPUChainedStruct
	count                  u32
	mask                   u32
	alphaToCoverageEnabled WGPUBool
}

struct WGPUOrigin3D {
	x u32
	y u32
	z u32
}

struct WGPUPipelineLayoutDescriptor {
	nextInChain          &WGPUChainedStruct
	label                &i8
	bindGroupLayoutCount usize
	bindGroupLayouts     &WGPUBindGroupLayout
}

struct WGPUPrimitiveDepthClipControl {
	chain          WGPUChainedStruct
	unclippedDepth WGPUBool
}

struct WGPUPrimitiveState {
	nextInChain      &WGPUChainedStruct
	topology         WGPUPrimitiveTopology
	stripIndexFormat WGPUIndexFormat
	frontFace        WGPUFrontFace
	cullMode         WGPUCullMode
}

struct WGPUQuerySetDescriptor {
	nextInChain &WGPUChainedStruct
	label       &i8
	type_       WGPUQueryType
	count       u32
}

struct WGPUQueueDescriptor {
	nextInChain &WGPUChainedStruct
	label       &i8
}

struct WGPURenderBundleDescriptor {
	nextInChain &WGPUChainedStruct
	label       &i8
}

struct WGPURenderBundleEncoderDescriptor {
	nextInChain        &WGPUChainedStruct
	label              &i8
	colorFormatCount   usize
	colorFormats       &WGPUTextureFormat
	depthStencilFormat WGPUTextureFormat
	sampleCount        u32
	depthReadOnly      WGPUBool
	stencilReadOnly    WGPUBool
}

struct WGPURenderPassDepthStencilAttachment {
	view              WGPUTextureView
	depthLoadOp       WGPULoadOp
	depthStoreOp      WGPUStoreOp
	depthClearValue   f32
	depthReadOnly     WGPUBool
	stencilLoadOp     WGPULoadOp
	stencilStoreOp    WGPUStoreOp
	stencilClearValue u32
	stencilReadOnly   WGPUBool
}

struct WGPURenderPassDescriptorMaxDrawCount {
	chain        WGPUChainedStruct
	maxDrawCount u64
}

struct WGPURenderPassTimestampWrites {
	querySet                  WGPUQuerySet
	beginningOfPassWriteIndex u32
	endOfPassWriteIndex       u32
}

struct WGPURequestAdapterOptions {
	nextInChain          &WGPUChainedStruct
	compatibleSurface    WGPUSurface
	powerPreference      WGPUPowerPreference
	backendType          WGPUBackendType
	forceFallbackAdapter WGPUBool
}

struct WGPUSamplerBindingLayout {
	nextInChain &WGPUChainedStruct
	type_       WGPUSamplerBindingType
}

struct WGPUSamplerDescriptor {
	nextInChain   &WGPUChainedStruct
	label         &i8
	addressModeU  WGPUAddressMode
	addressModeV  WGPUAddressMode
	addressModeW  WGPUAddressMode
	magFilter     WGPUFilterMode
	minFilter     WGPUFilterMode
	mipmapFilter  WGPUMipmapFilterMode
	lodMinClamp   f32
	lodMaxClamp   f32
	compare       WGPUCompareFunction
	maxAnisotropy u16
}

struct WGPUShaderModuleCompilationHint {
	nextInChain &WGPUChainedStruct
	entryPoint  &i8
	layout      WGPUPipelineLayout
}

struct WGPUShaderModuleSPIRVDescriptor {
	chain    WGPUChainedStruct
	codeSize u32
	code     &u32
}

struct WGPUShaderModuleWGSLDescriptor {
	chain WGPUChainedStruct
	code  &i8
}

struct WGPUStencilFaceState {
	compare     WGPUCompareFunction
	failOp      WGPUStencilOperation
	depthFailOp WGPUStencilOperation
	passOp      WGPUStencilOperation
}

struct WGPUStorageTextureBindingLayout {
	nextInChain   &WGPUChainedStruct
	access        WGPUStorageTextureAccess
	format        WGPUTextureFormat
	viewDimension WGPUTextureViewDimension
}

struct WGPUSurfaceCapabilities {
	nextInChain      &WGPUChainedStructOut
	formatCount      usize
	formats          &WGPUTextureFormat
	presentModeCount usize
	presentModes     &WGPUPresentMode
	alphaModeCount   usize
	alphaModes       &WGPUCompositeAlphaMode
}

struct WGPUSurfaceConfiguration {
	nextInChain     &WGPUChainedStruct
	device          WGPUDevice
	format          WGPUTextureFormat
	usage           WGPUTextureUsageFlags
	viewFormatCount usize
	viewFormats     &WGPUTextureFormat
	alphaMode       WGPUCompositeAlphaMode
	width           u32
	height          u32
	presentMode     WGPUPresentMode
}

struct WGPUSurfaceDescriptor {
	nextInChain &WGPUChainedStruct
	label       &i8
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
	nextInChain   &WGPUChainedStruct
	sampleType    WGPUTextureSampleType
	viewDimension WGPUTextureViewDimension
	multisampled  WGPUBool
}

struct WGPUTextureDataLayout {
	nextInChain  &WGPUChainedStruct
	offset       u64
	bytesPerRow  u32
	rowsPerImage u32
}

struct WGPUTextureViewDescriptor {
	nextInChain     &WGPUChainedStruct
	label           &i8
	format          WGPUTextureFormat
	dimension       WGPUTextureViewDimension
	baseMipLevel    u32
	mipLevelCount   u32
	baseArrayLayer  u32
	arrayLayerCount u32
	aspect          WGPUTextureAspect
}

struct WGPUVertexAttribute {
	format         WGPUVertexFormat
	offset         u64
	shaderLocation u32
}

struct WGPUBindGroupDescriptor {
	nextInChain &WGPUChainedStruct
	label       &i8
	layout      WGPUBindGroupLayout
	entryCount  usize
	entries     &WGPUBindGroupEntry
}

struct WGPUBindGroupLayoutEntry {
	nextInChain    &WGPUChainedStruct
	binding        u32
	visibility     WGPUShaderStageFlags
	buffer         WGPUBufferBindingLayout
	sampler        WGPUSamplerBindingLayout
	texture        WGPUTextureBindingLayout
	storageTexture WGPUStorageTextureBindingLayout
}

struct WGPUBlendState {
	color WGPUBlendComponent
	alpha WGPUBlendComponent
}

struct WGPUCompilationInfo {
	nextInChain  &WGPUChainedStruct
	messageCount usize
	messages     &WGPUCompilationMessage
}

struct WGPUComputePassDescriptor {
	nextInChain     &WGPUChainedStruct
	label           &i8
	timestampWrites &WGPUComputePassTimestampWrites
}

struct WGPUDepthStencilState {
	nextInChain         &WGPUChainedStruct
	format              WGPUTextureFormat
	depthWriteEnabled   WGPUBool
	depthCompare        WGPUCompareFunction
	stencilFront        WGPUStencilFaceState
	stencilBack         WGPUStencilFaceState
	stencilReadMask     u32
	stencilWriteMask    u32
	depthBias           int
	depthBiasSlopeScale f32
	depthBiasClamp      f32
}

struct WGPUImageCopyBuffer {
	nextInChain &WGPUChainedStruct
	layout      WGPUTextureDataLayout
	buffer      WGPUBuffer
}

struct WGPUImageCopyTexture {
	nextInChain &WGPUChainedStruct
	texture     WGPUTexture
	mipLevel    u32
	origin      WGPUOrigin3D
	aspect      WGPUTextureAspect
}

struct WGPUProgrammableStageDescriptor {
	nextInChain   &WGPUChainedStruct
	module_       WGPUShaderModule
	entryPoint    &i8
	constantCount usize
	constants     &WGPUConstantEntry
}

struct WGPURenderPassColorAttachment {
	nextInChain   &WGPUChainedStruct
	view          WGPUTextureView
	resolveTarget WGPUTextureView
	loadOp        WGPULoadOp
	storeOp       WGPUStoreOp
	clearValue    WGPUColor
}

struct WGPURequiredLimits {
	nextInChain &WGPUChainedStruct
	limits      WGPULimits
}

struct WGPUShaderModuleDescriptor {
	nextInChain &WGPUChainedStruct
	label       &i8
	hintCount   usize
	hints       &WGPUShaderModuleCompilationHint
}

struct WGPUSupportedLimits {
	nextInChain &WGPUChainedStructOut
	limits      WGPULimits
}

struct WGPUTextureDescriptor {
	nextInChain     &WGPUChainedStruct
	label           &i8
	usage           WGPUTextureUsageFlags
	dimension       WGPUTextureDimension
	size            WGPUExtent3D
	format          WGPUTextureFormat
	mipLevelCount   u32
	sampleCount     u32
	viewFormatCount usize
	viewFormats     &WGPUTextureFormat
}

struct WGPUVertexBufferLayout {
	arrayStride    u64
	stepMode       WGPUVertexStepMode
	attributeCount usize
	attributes     &WGPUVertexAttribute
}

struct WGPUBindGroupLayoutDescriptor {
	nextInChain &WGPUChainedStruct
	label       &i8
	entryCount  usize
	entries     &WGPUBindGroupLayoutEntry
}

struct WGPUColorTargetState {
	nextInChain &WGPUChainedStruct
	format      WGPUTextureFormat
	blend       &WGPUBlendState
	writeMask   WGPUColorWriteMaskFlags
}

struct WGPUComputePipelineDescriptor {
	nextInChain &WGPUChainedStruct
	label       &i8
	layout      WGPUPipelineLayout
	compute     WGPUProgrammableStageDescriptor
}

struct WGPUDeviceDescriptor {
	nextInChain          &WGPUChainedStruct
	label                &i8
	requiredFeatureCount usize
	requiredFeatures     &WGPUFeatureName
	requiredLimits       &WGPURequiredLimits
	defaultQueue         WGPUQueueDescriptor
	deviceLostCallback   WGPUDeviceLostCallback
	deviceLostUserdata   voidptr
}

struct WGPURenderPassDescriptor {
	nextInChain            &WGPUChainedStruct
	label                  &i8
	colorAttachmentCount   usize
	colorAttachments       &WGPURenderPassColorAttachment
	depthStencilAttachment &WGPURenderPassDepthStencilAttachment
	occlusionQuerySet      WGPUQuerySet
	timestampWrites        &WGPURenderPassTimestampWrites
}

struct WGPUVertexState {
	nextInChain   &WGPUChainedStruct
	module_       WGPUShaderModule
	entryPoint    &i8
	constantCount usize
	constants     &WGPUConstantEntry
	bufferCount   usize
	buffers       &WGPUVertexBufferLayout
}

struct WGPUFragmentState {
	nextInChain   &WGPUChainedStruct
	module_       WGPUShaderModule
	entryPoint    &i8
	constantCount usize
	constants     &WGPUConstantEntry
	targetCount   usize
	targets       &WGPUColorTargetState
}

struct WGPURenderPipelineDescriptor {
	nextInChain  &WGPUChainedStruct
	label        &i8
	layout       WGPUPipelineLayout
	vertex       WGPUVertexState
	primitive    WGPUPrimitiveState
	depthStencil &WGPUDepthStencilState
	multisample  WGPUMultisampleState
	fragment     &WGPUFragmentState
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

@[c: 'wgpuCreateInstance']
fn wgpucreateinstance(descriptor &WGPUInstanceDescriptor) WGPUInstance

@[c: 'wgpuGetProcAddress']
fn wgpugetprocaddress(device WGPUDevice, procname &i8) WGPUProc

@[c: 'wgpuAdapterEnumerateFeatures']
fn wgpuadapterenumeratefeatures(adapter WGPUAdapter, features &WGPUFeatureName) usize

@[c: 'wgpuAdapterGetLimits']
fn wgpuadaptergetlimits(adapter WGPUAdapter, limits &WGPUSupportedLimits) WGPUBool

@[c: 'wgpuAdapterGetProperties']
fn wgpuadaptergetproperties(adapter WGPUAdapter, properties &WGPUAdapterProperties)

@[c: 'wgpuAdapterHasFeature']
fn wgpuadapterhasfeature(adapter WGPUAdapter, feature WGPUFeatureName) WGPUBool

@[c: 'wgpuAdapterRequestDevice']
fn wgpuadapterrequestdevice(adapter WGPUAdapter, descriptor &WGPUDeviceDescriptor, callback WGPURequestDeviceCallback, userdata voidptr)

@[c: 'wgpuAdapterReference']
fn wgpuadapterreference(adapter WGPUAdapter)

@[c: 'wgpuAdapterRelease']
fn wgpuadapterrelease(adapter WGPUAdapter)

@[c: 'wgpuBindGroupSetLabel']
fn wgpubindgroupsetlabel(bindgroup WGPUBindGroup, label &i8)

@[c: 'wgpuBindGroupReference']
fn wgpubindgroupreference(bindgroup WGPUBindGroup)

@[c: 'wgpuBindGroupRelease']
fn wgpubindgrouprelease(bindgroup WGPUBindGroup)

@[c: 'wgpuBindGroupLayoutSetLabel']
fn wgpubindgrouplayoutsetlabel(bindgrouplayout WGPUBindGroupLayout, label &i8)

@[c: 'wgpuBindGroupLayoutReference']
fn wgpubindgrouplayoutreference(bindgrouplayout WGPUBindGroupLayout)

@[c: 'wgpuBindGroupLayoutRelease']
fn wgpubindgrouplayoutrelease(bindgrouplayout WGPUBindGroupLayout)

@[c: 'wgpuBufferDestroy']
fn wgpubufferdestroy(buffer WGPUBuffer)

@[c: 'wgpuBufferGetConstMappedRange']
fn wgpubuffergetconstmappedrange(buffer WGPUBuffer, offset usize, size usize) voidptr

@[c: 'wgpuBufferGetMapState']
fn wgpubuffergetmapstate(buffer WGPUBuffer) WGPUBufferMapState

@[c: 'wgpuBufferGetMappedRange']
fn wgpubuffergetmappedrange(buffer WGPUBuffer, offset usize, size usize) voidptr

@[c: 'wgpuBufferGetSize']
fn wgpubuffergetsize(buffer WGPUBuffer) u64

@[c: 'wgpuBufferGetUsage']
fn wgpubuffergetusage(buffer WGPUBuffer) WGPUBufferUsageFlags

@[c: 'wgpuBufferMapAsync']
fn wgpubuffermapasync(buffer WGPUBuffer, mode WGPUMapModeFlags, offset usize, size usize, callback WGPUBufferMapCallback, userdata voidptr)

@[c: 'wgpuBufferSetLabel']
fn wgpubuffersetlabel(buffer WGPUBuffer, label &i8)

@[c: 'wgpuBufferUnmap']
fn wgpubufferunmap(buffer WGPUBuffer)

@[c: 'wgpuBufferReference']
fn wgpubufferreference(buffer WGPUBuffer)

@[c: 'wgpuBufferRelease']
fn wgpubufferrelease(buffer WGPUBuffer)

@[c: 'wgpuCommandBufferSetLabel']
fn wgpucommandbuffersetlabel(commandbuffer WGPUCommandBuffer, label &i8)

@[c: 'wgpuCommandBufferReference']
fn wgpucommandbufferreference(commandbuffer WGPUCommandBuffer)

@[c: 'wgpuCommandBufferRelease']
fn wgpucommandbufferrelease(commandbuffer WGPUCommandBuffer)

@[c: 'wgpuCommandEncoderBeginComputePass']
fn wgpucommandencoderbegincomputepass(commandencoder WGPUCommandEncoder, descriptor &WGPUComputePassDescriptor) WGPUComputePassEncoder

@[c: 'wgpuCommandEncoderBeginRenderPass']
fn wgpucommandencoderbeginrenderpass(commandencoder WGPUCommandEncoder, descriptor &WGPURenderPassDescriptor) WGPURenderPassEncoder

@[c: 'wgpuCommandEncoderClearBuffer']
fn wgpucommandencoderclearbuffer(commandencoder WGPUCommandEncoder, buffer WGPUBuffer, offset u64, size u64)

@[c: 'wgpuCommandEncoderCopyBufferToBuffer']
fn wgpucommandencodercopybuffertobuffer(commandencoder WGPUCommandEncoder, source WGPUBuffer, sourceoffset u64, destination WGPUBuffer, destinationoffset u64, size u64)

@[c: 'wgpuCommandEncoderCopyBufferToTexture']
fn wgpucommandencodercopybuffertotexture(commandencoder WGPUCommandEncoder, source &WGPUImageCopyBuffer, destination &WGPUImageCopyTexture, copysize &WGPUExtent3D)

@[c: 'wgpuCommandEncoderCopyTextureToBuffer']
fn wgpucommandencodercopytexturetobuffer(commandencoder WGPUCommandEncoder, source &WGPUImageCopyTexture, destination &WGPUImageCopyBuffer, copysize &WGPUExtent3D)

@[c: 'wgpuCommandEncoderCopyTextureToTexture']
fn wgpucommandencodercopytexturetotexture(commandencoder WGPUCommandEncoder, source &WGPUImageCopyTexture, destination &WGPUImageCopyTexture, copysize &WGPUExtent3D)

@[c: 'wgpuCommandEncoderFinish']
fn wgpucommandencoderfinish(commandencoder WGPUCommandEncoder, descriptor &WGPUCommandBufferDescriptor) WGPUCommandBuffer

@[c: 'wgpuCommandEncoderInsertDebugMarker']
fn wgpucommandencoderinsertdebugmarker(commandencoder WGPUCommandEncoder, markerlabel &i8)

@[c: 'wgpuCommandEncoderPopDebugGroup']
fn wgpucommandencoderpopdebuggroup(commandencoder WGPUCommandEncoder)

@[c: 'wgpuCommandEncoderPushDebugGroup']
fn wgpucommandencoderpushdebuggroup(commandencoder WGPUCommandEncoder, grouplabel &i8)

@[c: 'wgpuCommandEncoderResolveQuerySet']
fn wgpucommandencoderresolvequeryset(commandencoder WGPUCommandEncoder, queryset WGPUQuerySet, firstquery u32, querycount u32, destination WGPUBuffer, destinationoffset u64)

@[c: 'wgpuCommandEncoderSetLabel']
fn wgpucommandencodersetlabel(commandencoder WGPUCommandEncoder, label &i8)

@[c: 'wgpuCommandEncoderWriteTimestamp']
fn wgpucommandencoderwritetimestamp(commandencoder WGPUCommandEncoder, queryset WGPUQuerySet, queryindex u32)

@[c: 'wgpuCommandEncoderReference']
fn wgpucommandencoderreference(commandencoder WGPUCommandEncoder)

@[c: 'wgpuCommandEncoderRelease']
fn wgpucommandencoderrelease(commandencoder WGPUCommandEncoder)

@[c: 'wgpuComputePassEncoderDispatchWorkgroups']
fn wgpucomputepassencoderdispatchworkgroups(computepassencoder WGPUComputePassEncoder, workgroupcountx u32, workgroupcounty u32, workgroupcountz u32)

@[c: 'wgpuComputePassEncoderDispatchWorkgroupsIndirect']
fn wgpucomputepassencoderdispatchworkgroupsindirect(computepassencoder WGPUComputePassEncoder, indirectbuffer WGPUBuffer, indirectoffset u64)

@[c: 'wgpuComputePassEncoderEnd']
fn wgpucomputepassencoderend(computepassencoder WGPUComputePassEncoder)

@[c: 'wgpuComputePassEncoderInsertDebugMarker']
fn wgpucomputepassencoderinsertdebugmarker(computepassencoder WGPUComputePassEncoder, markerlabel &i8)

@[c: 'wgpuComputePassEncoderPopDebugGroup']
fn wgpucomputepassencoderpopdebuggroup(computepassencoder WGPUComputePassEncoder)

@[c: 'wgpuComputePassEncoderPushDebugGroup']
fn wgpucomputepassencoderpushdebuggroup(computepassencoder WGPUComputePassEncoder, grouplabel &i8)

@[c: 'wgpuComputePassEncoderSetBindGroup']
fn wgpucomputepassencodersetbindgroup(computepassencoder WGPUComputePassEncoder, groupindex u32, group WGPUBindGroup, dynamicoffsetcount usize, dynamicoffsets &u32)

@[c: 'wgpuComputePassEncoderSetLabel']
fn wgpucomputepassencodersetlabel(computepassencoder WGPUComputePassEncoder, label &i8)

@[c: 'wgpuComputePassEncoderSetPipeline']
fn wgpucomputepassencodersetpipeline(computepassencoder WGPUComputePassEncoder, pipeline WGPUComputePipeline)

@[c: 'wgpuComputePassEncoderReference']
fn wgpucomputepassencoderreference(computepassencoder WGPUComputePassEncoder)

@[c: 'wgpuComputePassEncoderRelease']
fn wgpucomputepassencoderrelease(computepassencoder WGPUComputePassEncoder)

@[c: 'wgpuComputePipelineGetBindGroupLayout']
fn wgpucomputepipelinegetbindgrouplayout(computepipeline WGPUComputePipeline, groupindex u32) WGPUBindGroupLayout

@[c: 'wgpuComputePipelineSetLabel']
fn wgpucomputepipelinesetlabel(computepipeline WGPUComputePipeline, label &i8)

@[c: 'wgpuComputePipelineReference']
fn wgpucomputepipelinereference(computepipeline WGPUComputePipeline)

@[c: 'wgpuComputePipelineRelease']
fn wgpucomputepipelinerelease(computepipeline WGPUComputePipeline)

@[c: 'wgpuDeviceCreateBindGroup']
fn wgpudevicecreatebindgroup(device WGPUDevice, descriptor &WGPUBindGroupDescriptor) WGPUBindGroup

@[c: 'wgpuDeviceCreateBindGroupLayout']
fn wgpudevicecreatebindgrouplayout(device WGPUDevice, descriptor &WGPUBindGroupLayoutDescriptor) WGPUBindGroupLayout

@[c: 'wgpuDeviceCreateBuffer']
fn wgpudevicecreatebuffer(device WGPUDevice, descriptor &WGPUBufferDescriptor) WGPUBuffer

@[c: 'wgpuDeviceCreateCommandEncoder']
fn wgpudevicecreatecommandencoder(device WGPUDevice, descriptor &WGPUCommandEncoderDescriptor) WGPUCommandEncoder

@[c: 'wgpuDeviceCreateComputePipeline']
fn wgpudevicecreatecomputepipeline(device WGPUDevice, descriptor &WGPUComputePipelineDescriptor) WGPUComputePipeline

@[c: 'wgpuDeviceCreateComputePipelineAsync']
fn wgpudevicecreatecomputepipelineasync(device WGPUDevice, descriptor &WGPUComputePipelineDescriptor, callback WGPUCreateComputePipelineAsyncCallback, userdata voidptr)

@[c: 'wgpuDeviceCreatePipelineLayout']
fn wgpudevicecreatepipelinelayout(device WGPUDevice, descriptor &WGPUPipelineLayoutDescriptor) WGPUPipelineLayout

@[c: 'wgpuDeviceCreateQuerySet']
fn wgpudevicecreatequeryset(device WGPUDevice, descriptor &WGPUQuerySetDescriptor) WGPUQuerySet

@[c: 'wgpuDeviceCreateRenderBundleEncoder']
fn wgpudevicecreaterenderbundleencoder(device WGPUDevice, descriptor &WGPURenderBundleEncoderDescriptor) WGPURenderBundleEncoder

@[c: 'wgpuDeviceCreateRenderPipeline']
fn wgpudevicecreaterenderpipeline(device WGPUDevice, descriptor &WGPURenderPipelineDescriptor) WGPURenderPipeline

@[c: 'wgpuDeviceCreateRenderPipelineAsync']
fn wgpudevicecreaterenderpipelineasync(device WGPUDevice, descriptor &WGPURenderPipelineDescriptor, callback WGPUCreateRenderPipelineAsyncCallback, userdata voidptr)

@[c: 'wgpuDeviceCreateSampler']
fn wgpudevicecreatesampler(device WGPUDevice, descriptor &WGPUSamplerDescriptor) WGPUSampler

@[c: 'wgpuDeviceCreateShaderModule']
fn wgpudevicecreateshadermodule(device WGPUDevice, descriptor &WGPUShaderModuleDescriptor) WGPUShaderModule

@[c: 'wgpuDeviceCreateTexture']
fn wgpudevicecreatetexture(device WGPUDevice, descriptor &WGPUTextureDescriptor) WGPUTexture

@[c: 'wgpuDeviceDestroy']
fn wgpudevicedestroy(device WGPUDevice)

@[c: 'wgpuDeviceEnumerateFeatures']
fn wgpudeviceenumeratefeatures(device WGPUDevice, features &WGPUFeatureName) usize

@[c: 'wgpuDeviceGetLimits']
fn wgpudevicegetlimits(device WGPUDevice, limits &WGPUSupportedLimits) WGPUBool

@[c: 'wgpuDeviceGetQueue']
fn wgpudevicegetqueue(device WGPUDevice) WGPUQueue

@[c: 'wgpuDeviceHasFeature']
fn wgpudevicehasfeature(device WGPUDevice, feature WGPUFeatureName) WGPUBool

@[c: 'wgpuDevicePopErrorScope']
fn wgpudevicepoperrorscope(device WGPUDevice, callback WGPUErrorCallback, userdata voidptr)

@[c: 'wgpuDevicePushErrorScope']
fn wgpudevicepusherrorscope(device WGPUDevice, filter WGPUErrorFilter)

@[c: 'wgpuDeviceSetLabel']
fn wgpudevicesetlabel(device WGPUDevice, label &i8)

@[c: 'wgpuDeviceSetUncapturedErrorCallback']
fn wgpudevicesetuncapturederrorcallback(device WGPUDevice, callback WGPUErrorCallback, userdata voidptr)

@[c: 'wgpuDeviceReference']
fn wgpudevicereference(device WGPUDevice)

@[c: 'wgpuDeviceRelease']
fn wgpudevicerelease(device WGPUDevice)

@[c: 'wgpuInstanceCreateSurface']
fn wgpuinstancecreatesurface(instance WGPUInstance, descriptor &WGPUSurfaceDescriptor) WGPUSurface

@[c: 'wgpuInstanceProcessEvents']
fn wgpuinstanceprocessevents(instance WGPUInstance)

@[c: 'wgpuInstanceRequestAdapter']
fn wgpuinstancerequestadapter(instance WGPUInstance, options &WGPURequestAdapterOptions, callback WGPURequestAdapterCallback, userdata voidptr)

@[c: 'wgpuInstanceReference']
fn wgpuinstancereference(instance WGPUInstance)

@[c: 'wgpuInstanceRelease']
fn wgpuinstancerelease(instance WGPUInstance)

@[c: 'wgpuPipelineLayoutSetLabel']
fn wgpupipelinelayoutsetlabel(pipelinelayout WGPUPipelineLayout, label &i8)

@[c: 'wgpuPipelineLayoutReference']
fn wgpupipelinelayoutreference(pipelinelayout WGPUPipelineLayout)

@[c: 'wgpuPipelineLayoutRelease']
fn wgpupipelinelayoutrelease(pipelinelayout WGPUPipelineLayout)

@[c: 'wgpuQuerySetDestroy']
fn wgpuquerysetdestroy(queryset WGPUQuerySet)

@[c: 'wgpuQuerySetGetCount']
fn wgpuquerysetgetcount(queryset WGPUQuerySet) u32

@[c: 'wgpuQuerySetGetType']
fn wgpuquerysetgettype(queryset WGPUQuerySet) WGPUQueryType

@[c: 'wgpuQuerySetSetLabel']
fn wgpuquerysetsetlabel(queryset WGPUQuerySet, label &i8)

@[c: 'wgpuQuerySetReference']
fn wgpuquerysetreference(queryset WGPUQuerySet)

@[c: 'wgpuQuerySetRelease']
fn wgpuquerysetrelease(queryset WGPUQuerySet)

@[c: 'wgpuQueueOnSubmittedWorkDone']
fn wgpuqueueonsubmittedworkdone(queue WGPUQueue, callback WGPUQueueWorkDoneCallback, userdata voidptr)

@[c: 'wgpuQueueSetLabel']
fn wgpuqueuesetlabel(queue WGPUQueue, label &i8)

@[c: 'wgpuQueueSubmit']
fn wgpuqueuesubmit(queue WGPUQueue, commandcount usize, commands &WGPUCommandBuffer)

@[c: 'wgpuQueueWriteBuffer']
fn wgpuqueuewritebuffer(queue WGPUQueue, buffer WGPUBuffer, bufferoffset u64, data voidptr, size usize)

@[c: 'wgpuQueueWriteTexture']
fn wgpuqueuewritetexture(queue WGPUQueue, destination &WGPUImageCopyTexture, data voidptr, datasize usize, datalayout &WGPUTextureDataLayout, writesize &WGPUExtent3D)

@[c: 'wgpuQueueReference']
fn wgpuqueuereference(queue WGPUQueue)

@[c: 'wgpuQueueRelease']
fn wgpuqueuerelease(queue WGPUQueue)

@[c: 'wgpuRenderBundleSetLabel']
fn wgpurenderbundlesetlabel(renderbundle WGPURenderBundle, label &i8)

@[c: 'wgpuRenderBundleReference']
fn wgpurenderbundlereference(renderbundle WGPURenderBundle)

@[c: 'wgpuRenderBundleRelease']
fn wgpurenderbundlerelease(renderbundle WGPURenderBundle)

@[c: 'wgpuRenderBundleEncoderDraw']
fn wgpurenderbundleencoderdraw(renderbundleencoder WGPURenderBundleEncoder, vertexcount u32, instancecount u32, firstvertex u32, firstinstance u32)

@[c: 'wgpuRenderBundleEncoderDrawIndexed']
fn wgpurenderbundleencoderdrawindexed(renderbundleencoder WGPURenderBundleEncoder, indexcount u32, instancecount u32, firstindex u32, basevertex int, firstinstance u32)

@[c: 'wgpuRenderBundleEncoderDrawIndexedIndirect']
fn wgpurenderbundleencoderdrawindexedindirect(renderbundleencoder WGPURenderBundleEncoder, indirectbuffer WGPUBuffer, indirectoffset u64)

@[c: 'wgpuRenderBundleEncoderDrawIndirect']
fn wgpurenderbundleencoderdrawindirect(renderbundleencoder WGPURenderBundleEncoder, indirectbuffer WGPUBuffer, indirectoffset u64)

@[c: 'wgpuRenderBundleEncoderFinish']
fn wgpurenderbundleencoderfinish(renderbundleencoder WGPURenderBundleEncoder, descriptor &WGPURenderBundleDescriptor) WGPURenderBundle

@[c: 'wgpuRenderBundleEncoderInsertDebugMarker']
fn wgpurenderbundleencoderinsertdebugmarker(renderbundleencoder WGPURenderBundleEncoder, markerlabel &i8)

@[c: 'wgpuRenderBundleEncoderPopDebugGroup']
fn wgpurenderbundleencoderpopdebuggroup(renderbundleencoder WGPURenderBundleEncoder)

@[c: 'wgpuRenderBundleEncoderPushDebugGroup']
fn wgpurenderbundleencoderpushdebuggroup(renderbundleencoder WGPURenderBundleEncoder, grouplabel &i8)

@[c: 'wgpuRenderBundleEncoderSetBindGroup']
fn wgpurenderbundleencodersetbindgroup(renderbundleencoder WGPURenderBundleEncoder, groupindex u32, group WGPUBindGroup, dynamicoffsetcount usize, dynamicoffsets &u32)

@[c: 'wgpuRenderBundleEncoderSetIndexBuffer']
fn wgpurenderbundleencodersetindexbuffer(renderbundleencoder WGPURenderBundleEncoder, buffer WGPUBuffer, format WGPUIndexFormat, offset u64, size u64)

@[c: 'wgpuRenderBundleEncoderSetLabel']
fn wgpurenderbundleencodersetlabel(renderbundleencoder WGPURenderBundleEncoder, label &i8)

@[c: 'wgpuRenderBundleEncoderSetPipeline']
fn wgpurenderbundleencodersetpipeline(renderbundleencoder WGPURenderBundleEncoder, pipeline WGPURenderPipeline)

@[c: 'wgpuRenderBundleEncoderSetVertexBuffer']
fn wgpurenderbundleencodersetvertexbuffer(renderbundleencoder WGPURenderBundleEncoder, slot u32, buffer WGPUBuffer, offset u64, size u64)

@[c: 'wgpuRenderBundleEncoderReference']
fn wgpurenderbundleencoderreference(renderbundleencoder WGPURenderBundleEncoder)

@[c: 'wgpuRenderBundleEncoderRelease']
fn wgpurenderbundleencoderrelease(renderbundleencoder WGPURenderBundleEncoder)

@[c: 'wgpuRenderPassEncoderBeginOcclusionQuery']
fn wgpurenderpassencoderbeginocclusionquery(renderpassencoder WGPURenderPassEncoder, queryindex u32)

@[c: 'wgpuRenderPassEncoderDraw']
fn wgpurenderpassencoderdraw(renderpassencoder WGPURenderPassEncoder, vertexcount u32, instancecount u32, firstvertex u32, firstinstance u32)

@[c: 'wgpuRenderPassEncoderDrawIndexed']
fn wgpurenderpassencoderdrawindexed(renderpassencoder WGPURenderPassEncoder, indexcount u32, instancecount u32, firstindex u32, basevertex int, firstinstance u32)

@[c: 'wgpuRenderPassEncoderDrawIndexedIndirect']
fn wgpurenderpassencoderdrawindexedindirect(renderpassencoder WGPURenderPassEncoder, indirectbuffer WGPUBuffer, indirectoffset u64)

@[c: 'wgpuRenderPassEncoderDrawIndirect']
fn wgpurenderpassencoderdrawindirect(renderpassencoder WGPURenderPassEncoder, indirectbuffer WGPUBuffer, indirectoffset u64)

@[c: 'wgpuRenderPassEncoderEnd']
fn wgpurenderpassencoderend(renderpassencoder WGPURenderPassEncoder)

@[c: 'wgpuRenderPassEncoderEndOcclusionQuery']
fn wgpurenderpassencoderendocclusionquery(renderpassencoder WGPURenderPassEncoder)

@[c: 'wgpuRenderPassEncoderExecuteBundles']
fn wgpurenderpassencoderexecutebundles(renderpassencoder WGPURenderPassEncoder, bundlecount usize, bundles &WGPURenderBundle)

@[c: 'wgpuRenderPassEncoderInsertDebugMarker']
fn wgpurenderpassencoderinsertdebugmarker(renderpassencoder WGPURenderPassEncoder, markerlabel &i8)

@[c: 'wgpuRenderPassEncoderPopDebugGroup']
fn wgpurenderpassencoderpopdebuggroup(renderpassencoder WGPURenderPassEncoder)

@[c: 'wgpuRenderPassEncoderPushDebugGroup']
fn wgpurenderpassencoderpushdebuggroup(renderpassencoder WGPURenderPassEncoder, grouplabel &i8)

@[c: 'wgpuRenderPassEncoderSetBindGroup']
fn wgpurenderpassencodersetbindgroup(renderpassencoder WGPURenderPassEncoder, groupindex u32, group WGPUBindGroup, dynamicoffsetcount usize, dynamicoffsets &u32)

@[c: 'wgpuRenderPassEncoderSetBlendConstant']
fn wgpurenderpassencodersetblendconstant(renderpassencoder WGPURenderPassEncoder, color &WGPUColor)

@[c: 'wgpuRenderPassEncoderSetIndexBuffer']
fn wgpurenderpassencodersetindexbuffer(renderpassencoder WGPURenderPassEncoder, buffer WGPUBuffer, format WGPUIndexFormat, offset u64, size u64)

@[c: 'wgpuRenderPassEncoderSetLabel']
fn wgpurenderpassencodersetlabel(renderpassencoder WGPURenderPassEncoder, label &i8)

@[c: 'wgpuRenderPassEncoderSetPipeline']
fn wgpurenderpassencodersetpipeline(renderpassencoder WGPURenderPassEncoder, pipeline WGPURenderPipeline)

@[c: 'wgpuRenderPassEncoderSetScissorRect']
fn wgpurenderpassencodersetscissorrect(renderpassencoder WGPURenderPassEncoder, x u32, y u32, width u32, height u32)

@[c: 'wgpuRenderPassEncoderSetStencilReference']
fn wgpurenderpassencodersetstencilreference(renderpassencoder WGPURenderPassEncoder, reference u32)

@[c: 'wgpuRenderPassEncoderSetVertexBuffer']
fn wgpurenderpassencodersetvertexbuffer(renderpassencoder WGPURenderPassEncoder, slot u32, buffer WGPUBuffer, offset u64, size u64)

@[c: 'wgpuRenderPassEncoderSetViewport']
fn wgpurenderpassencodersetviewport(renderpassencoder WGPURenderPassEncoder, x f32, y f32, width f32, height f32, mindepth f32, maxdepth f32)

@[c: 'wgpuRenderPassEncoderReference']
fn wgpurenderpassencoderreference(renderpassencoder WGPURenderPassEncoder)

@[c: 'wgpuRenderPassEncoderRelease']
fn wgpurenderpassencoderrelease(renderpassencoder WGPURenderPassEncoder)

@[c: 'wgpuRenderPipelineGetBindGroupLayout']
fn wgpurenderpipelinegetbindgrouplayout(renderpipeline WGPURenderPipeline, groupindex u32) WGPUBindGroupLayout

@[c: 'wgpuRenderPipelineSetLabel']
fn wgpurenderpipelinesetlabel(renderpipeline WGPURenderPipeline, label &i8)

@[c: 'wgpuRenderPipelineReference']
fn wgpurenderpipelinereference(renderpipeline WGPURenderPipeline)

@[c: 'wgpuRenderPipelineRelease']
fn wgpurenderpipelinerelease(renderpipeline WGPURenderPipeline)

@[c: 'wgpuSamplerSetLabel']
fn wgpusamplersetlabel(sampler WGPUSampler, label &i8)

@[c: 'wgpuSamplerReference']
fn wgpusamplerreference(sampler WGPUSampler)

@[c: 'wgpuSamplerRelease']
fn wgpusamplerrelease(sampler WGPUSampler)

@[c: 'wgpuShaderModuleGetCompilationInfo']
fn wgpushadermodulegetcompilationinfo(shadermodule WGPUShaderModule, callback WGPUCompilationInfoCallback, userdata voidptr)

@[c: 'wgpuShaderModuleSetLabel']
fn wgpushadermodulesetlabel(shadermodule WGPUShaderModule, label &i8)

@[c: 'wgpuShaderModuleReference']
fn wgpushadermodulereference(shadermodule WGPUShaderModule)

@[c: 'wgpuShaderModuleRelease']
fn wgpushadermodulerelease(shadermodule WGPUShaderModule)

@[c: 'wgpuSurfaceConfigure']
fn wgpusurfaceconfigure(surface WGPUSurface, config &WGPUSurfaceConfiguration)

@[c: 'wgpuSurfaceGetCapabilities']
fn wgpusurfacegetcapabilities(surface WGPUSurface, adapter WGPUAdapter, capabilities &WGPUSurfaceCapabilities)

@[c: 'wgpuSurfaceGetCurrentTexture']
fn wgpusurfacegetcurrenttexture(surface WGPUSurface, surfacetexture &WGPUSurfaceTexture)

@[c: 'wgpuSurfaceGetPreferredFormat']
fn wgpusurfacegetpreferredformat(surface WGPUSurface, adapter WGPUAdapter) WGPUTextureFormat

@[c: 'wgpuSurfacePresent']
fn wgpusurfacepresent(surface WGPUSurface)

@[c: 'wgpuSurfaceUnconfigure']
fn wgpusurfaceunconfigure(surface WGPUSurface)

@[c: 'wgpuSurfaceReference']
fn wgpusurfacereference(surface WGPUSurface)

@[c: 'wgpuSurfaceRelease']
fn wgpusurfacerelease(surface WGPUSurface)

@[c: 'wgpuSurfaceCapabilitiesFreeMembers']
fn wgpusurfacecapabilitiesfreemembers(capabilities WGPUSurfaceCapabilities)

@[c: 'wgpuTextureCreateView']
fn wgputexturecreateview(texture WGPUTexture, descriptor &WGPUTextureViewDescriptor) WGPUTextureView

@[c: 'wgpuTextureDestroy']
fn wgputexturedestroy(texture WGPUTexture)

@[c: 'wgpuTextureGetDepthOrArrayLayers']
fn wgputexturegetdepthorarraylayers(texture WGPUTexture) u32

@[c: 'wgpuTextureGetDimension']
fn wgputexturegetdimension(texture WGPUTexture) WGPUTextureDimension

@[c: 'wgpuTextureGetFormat']
fn wgputexturegetformat(texture WGPUTexture) WGPUTextureFormat

@[c: 'wgpuTextureGetHeight']
fn wgputexturegetheight(texture WGPUTexture) u32

@[c: 'wgpuTextureGetMipLevelCount']
fn wgputexturegetmiplevelcount(texture WGPUTexture) u32

@[c: 'wgpuTextureGetSampleCount']
fn wgputexturegetsamplecount(texture WGPUTexture) u32

@[c: 'wgpuTextureGetUsage']
fn wgputexturegetusage(texture WGPUTexture) WGPUTextureUsageFlags

@[c: 'wgpuTextureGetWidth']
fn wgputexturegetwidth(texture WGPUTexture) u32

@[c: 'wgpuTextureSetLabel']
fn wgputexturesetlabel(texture WGPUTexture, label &i8)

@[c: 'wgpuTextureReference']
fn wgputexturereference(texture WGPUTexture)

@[c: 'wgpuTextureRelease']
fn wgputexturerelease(texture WGPUTexture)

@[c: 'wgpuTextureViewSetLabel']
fn wgputextureviewsetlabel(textureview WGPUTextureView, label &i8)

@[c: 'wgpuTextureViewReference']
fn wgputextureviewreference(textureview WGPUTextureView)

@[c: 'wgpuTextureViewRelease']
fn wgputextureviewrelease(textureview WGPUTextureView)
