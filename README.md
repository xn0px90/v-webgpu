# v-webgpu
WebGPU c2v experiment.

[c2v](https://github.com/vlang/c2v) translates your C source code into V code.

The purpose of this project is to research and improve c2v while having fun with WebGPU.

WARNING::Pre-alpha::WARNING

## Status

This repository contains low-level V bindings generated from `webgpu.h`.

The bindings compile as a shared module:

```bash
v -shared webgpu/webgpu.v
```

## Install

```bash
v install xn0px90.webgpu
```

Then use it in your project:

```v
import webgpu
```

## Examples

Usage snippets are documented in [examples/examples.md](examples/examples.md).
