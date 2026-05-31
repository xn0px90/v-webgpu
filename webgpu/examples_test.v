module webgpu

fn test_enum_values() {
	assert int(WGPUMapMode.wgpumapmode_none) == 0
	assert int(WGPUMapMode.wgpumapmode_read) == 1
	assert int(WGPUMapMode.wgpumapmode_write) == 2
}

fn test_adapter_options_setup() {
	options := WGPURequestAdapterOptions{
		next_in_chain: unsafe { nil }
		compatible_surface: unsafe { nil }
		power_preference: .wgpupowerpreference_highperformance
		backend_type: .wgpubackendtype_undefined
		force_fallback_adapter: 0
	}

	assert options.power_preference == .wgpupowerpreference_highperformance
	assert options.force_fallback_adapter == 0
	assert options.compatible_surface == unsafe { nil }
}

fn test_device_descriptor_defaults() {
	queue_desc := WGPUQueueDescriptor{
		next_in_chain: unsafe { nil }
		label: unsafe { nil }
	}
	desc := WGPUDeviceDescriptor{
		next_in_chain: unsafe { nil }
		label: unsafe { nil }
		required_feature_count: 0
		required_features: unsafe { nil }
		require_limits: unsafe { nil }
		default_queue: queue_desc
	}
	assert desc.required_feature_count == 0
	assert desc.required_features == unsafe { nil }
	assert desc.require_limits == unsafe { nil }
}
