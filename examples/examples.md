# v-webgpu examples

This file contains small, focused examples for common binding usage.

Runnable examples are available in `webgpu/examples_test.v` and can be executed with:

```bash
v test webgpu/examples_test.v
```

## Visual test: rotating V logo

A standalone visual smoke test is available at `examples/rotating_v_logo.v`.

Run it with:

```bash
v run examples/rotating_v_logo.v
```

or use the VS Code task `Run Visual Test`.

## 1) Build-only sanity check

Use this command to verify the generated bindings compile:

```bash
v -shared webgpu/webgpu.v
```

## 2) Create adapter options

```v
import webgpu

fn main() {
	options := webgpu.WGPURequestAdapterOptions{
		next_in_chain: unsafe { nil }
		power_preference: .wgpupowerpreference_highperformance
		backend_type: .wgpubackendtype_undefined
		force_fallback_adapter: 0
		compatible_surface: unsafe { nil }
	}

	println(options.power_preference)
}
```

## 3) Request an adapter (callback)

```v
import webgpu

fn on_adapter(status webgpu.WGPURequestAdapterStatus, adapter webgpu.WGPUAdapter, message &i8, user_data voidptr) {
	_ = message
	_ = user_data
	if status == .wgpurequestadapterstatus_success {
		println('Adapter acquired: ${adapter}')
		webgpu.wgpuadapterrelease(adapter)
		return
	}
	println('Adapter request failed with status: ${status}')
}

fn main() {
	instance := webgpu.wgpucreateinstance(unsafe { nil })
	if instance == unsafe { nil } {
		println('Failed to create WebGPU instance')
		return
	}

	options := webgpu.WGPURequestAdapterOptions{}
	webgpu.wgpuinstancerequestadapter(instance, &options, on_adapter, unsafe { nil })
	webgpu.wgpuinstancerelease(instance)
}
```

## 4) Set labels for debugging

```v
import webgpu

fn label_example(device webgpu.WGPUDevice) {
	queue := webgpu.wgpudevicegetqueue(device)
	webgpu.wgpuqueuesetlabel(queue, c'Main Queue')
	webgpu.wgpuqueuerelease(queue)
}
```

## Notes

- These are low-level bindings that closely mirror C WebGPU API calls.
- Local examples use `import webgpu` directly from the standard `webgpu/` module directory.
- You need a native WebGPU implementation installed on your machine.
- If you are looking for full app examples, see [v-webgpu-examples](https://github.com/xn0px90/v-webgpu-examples).
