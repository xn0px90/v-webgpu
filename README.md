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

Runnable examples live in a separate repository: [xn0px90/v-webgpu-examples](https://github.com/xn0px90/v-webgpu-examples).

Install the module once in that repo:

```bash
v install xn0px90.webgpu
```

Then run the examples from the repo root:

- Rotating V logo: `v run examples/rotating_v_logo.v` - visual smoke test for the bindings.
- 3D OBJ V logo: `v run examples/v_logo_obj_3d.v` - loads and renders the V logo OBJ, caching it on first run.
- GX-gears-like demo: `v run examples/gx_gears_like.v` - animated interlocking gears scene.
- Doom-style raycaster demo: `v run examples/doom_demo.v` - corridor raycaster with movement and strafing controls.
- Galaga-style arcade game: `v run examples/galaga_style.v` - wave shooter with enemies, bullets, score, and lives.
- Tetris-style puzzle game: `v run examples/tetris_game.v` - falling-block puzzle with rotation, scoring, and levels.

Most demos close with `ESC`; the game examples also mention their controls in the on-screen HUD.
