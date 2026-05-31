module main

import gg
import math
import net.http
import os
import time
import webgpu

const win_w = 1120
const win_h = 760
const model_path = 'examples/assets/v-logo-3d.obj'
const model_url = 'https://raw.githubusercontent.com/vlang/v-logo/master/dist/3D/v-logo-3d.obj'

struct Vec2 {
	x f32
	y f32
}

struct Vec3 {
	x f32
	y f32
	z f32
}

struct Face {
	a int
	b int
	c int
}

struct Model {
	vertices []Vec3
	faces    []Face
}

struct RenderTri {
	a     Vec2
	b     Vec2
	c     Vec2
	depth f32
	fill  gg.Color
	edge  gg.Color
}

struct App {
mut:
	gg         &gg.Context = unsafe { nil }
	model      Model
	angle      f32
	last_tick  i64
	status_msg string
}

fn main() {
	mut app := &App{
		last_tick: time.ticks()
	}

	app.model = load_v_logo_model() or {
		app.status_msg = 'Failed to load OBJ: ${err}. Using fallback cube.'
		fallback_cube_model()
	}
	if app.status_msg.len == 0 {
		app.status_msg = 'Loaded OBJ from vlang/v-logo: ${model_path}'
	}

	app.gg = gg.new_context(
		width: win_w
		height: win_h
		create_window: true
		window_title: 'v-webgpu visual test: 3D OBJ (V logo)'
		bg_color: gg.rgb(8, 12, 22)
		event_fn: event
		frame_fn: frame
		user_data: app
	)
	app.gg.run()
}

fn event(e &gg.Event, mut app App) {
	if e.typ == .key_down && e.key_code == .escape {
		app.gg.quit()
	}
}

fn frame(mut app App) {
	now := time.ticks()
	dt := f32(now - app.last_tick) / 1000.0
	app.last_tick = now
	app.angle += dt * 0.9
	app.draw()
}

fn (mut app App) draw() {
	app.gg.begin()
	draw_background(mut app.gg)
	draw_model(mut app.gg, app.model, app.angle)

	app.gg.draw_text(20, 28, '3D OBJ Visual Test - V logo', gg.TextCfg{
		color: gg.rgb(232, 238, 255)
		size: 22
	})
	app.gg.draw_text(20, 58, app.status_msg, gg.TextCfg{
		color: gg.rgb(147, 211, 255)
		size: 16
	})
	app.gg.draw_text(20, 84, 'webgpu import ok (${webgpu.bindings_tag()})', gg.TextCfg{
		color: gg.rgb(150, 164, 196)
		size: 15
	})
	app.gg.draw_text(20, 108, 'Press ESC to close', gg.TextCfg{
		color: gg.rgb(150, 164, 196)
		size: 15
	})
	app.gg.end()
}

fn draw_background(mut g gg.Context) {
	for y in 0 .. win_h {
		t := f32(y) / f32(win_h)
		r := u8(8 + int(14.0 * t))
		gch := u8(12 + int(20.0 * t))
		b := u8(22 + int(33.0 * t))
		g.draw_line(0, y, win_w, y, gg.rgb(r, gch, b))
	}
}

fn draw_model(mut g gg.Context, model Model, angle f32) {
	if model.vertices.len == 0 || model.faces.len == 0 {
		return
	}

	focal := f32(730)
	camera_z := f32(3.1)
	center := Vec2{ x: win_w / 2, y: win_h / 2 + 12 }
	mut tris := []RenderTri{}

	for face in model.faces {
		if face.a >= model.vertices.len || face.b >= model.vertices.len || face.c >= model.vertices.len {
			continue
		}

		a := rotate_xyz(model.vertices[face.a], angle)
		b := rotate_xyz(model.vertices[face.b], angle)
		c := rotate_xyz(model.vertices[face.c], angle)

		// Push model slightly backward for stable perspective projection.
		za := a.z + camera_z
		zb := b.z + camera_z
		zc := c.z + camera_z
		if za <= 0.05 || zb <= 0.05 || zc <= 0.05 {
			continue
		}

		// Backface culling in camera space.
		u := Vec3{x: b.x - a.x, y: b.y - a.y, z: zb - za}
		v := Vec3{x: c.x - a.x, y: c.y - a.y, z: zc - za}
		nz := u.x * v.y - u.y * v.x
		if nz >= 0 {
			continue
		}

		pa := project(Vec3{x: a.x, y: a.y, z: za}, center, focal)
		pb := project(Vec3{x: b.x, y: b.y, z: zb}, center, focal)
		pc := project(Vec3{x: c.x, y: c.y, z: zc}, center, focal)

		avg_depth := (za + zb + zc) / 3.0
		shade := clamp01((avg_depth - 1.4) / 2.4)
		fill_color := lerp_color(gg.rgb(21, 56, 117), gg.rgb(93, 202, 255), 1.0 - shade)
		edge_color := lerp_color(gg.rgb(78, 138, 240), gg.rgb(184, 238, 255), 1.0 - shade)
		tris << RenderTri{
			a: pa
			b: pb
			c: pc
			depth: avg_depth
			fill: fill_color
			edge: edge_color
		}
	}

	tris.sort_with_compare(fn (a &RenderTri, b &RenderTri) int {
		if a.depth > b.depth {
			return -1
		}
		if a.depth < b.depth {
			return 1
		}
		return 0
	})

	for tri in tris {
		g.draw_triangle_filled(tri.a.x, tri.a.y, tri.b.x, tri.b.y, tri.c.x, tri.c.y, tri.fill)
		g.draw_triangle_empty(tri.a.x, tri.a.y, tri.b.x, tri.b.y, tri.c.x, tri.c.y, tri.edge)
	}
}

fn load_v_logo_model() !Model {
	if !os.exists(model_path) {
		os.mkdir_all(os.dir(model_path))!
		resp := http.get(model_url)!
		if resp.status_code != 200 {
			return error('download failed with status ${resp.status_code}')
		}
		os.write_file(model_path, resp.body)!
	}
	text := os.read_file(model_path)!
	return parse_obj(text)
}

fn parse_obj(text string) !Model {
	mut vertices := []Vec3{}
	mut faces := []Face{}

	for raw_line in text.split_into_lines() {
		line := raw_line.trim_space()
		if line.len == 0 || line.starts_with('#') {
			continue
		}
		if line.starts_with('v ') {
			parts := fields(line)
			if parts.len < 4 {
				continue
			}
			vertices << Vec3{
				x: parts[1].f32()
				y: parts[2].f32()
				z: parts[3].f32()
			}
			continue
		}
		if line.starts_with('f ') {
			parts := fields(line)
			if parts.len < 4 {
				continue
			}
			mut idx := []int{}
			for token in parts[1..] {
				i := parse_face_index(token)
				if i >= 0 {
					idx << i
				}
			}
			if idx.len >= 3 {
				for i in 1 .. idx.len - 1 {
					faces << Face{a: idx[0], b: idx[i], c: idx[i + 1]}
				}
			}
		}
	}

	if vertices.len == 0 || faces.len == 0 {
		return error('OBJ contains no supported geometry')
	}
	return normalize_model(Model{vertices: vertices, faces: faces})
}

fn fields(s string) []string {
	mut out := []string{}
	for p in s.split(' ') {
		if p.len > 0 {
			out << p
		}
	}
	return out
}

fn parse_face_index(token string) int {
	base := token.all_before('/').trim_space()
	if base.len == 0 {
		return -1
	}
	value := base.int()
	if value <= 0 {
		return -1
	}
	return value - 1
}

fn normalize_model(model Model) Model {
	mut min_x := f32(1e9)
	mut min_y := f32(1e9)
	mut min_z := f32(1e9)
	mut max_x := f32(-1e9)
	mut max_y := f32(-1e9)
	mut max_z := f32(-1e9)
	for v in model.vertices {
		if v.x < min_x { min_x = v.x }
		if v.y < min_y { min_y = v.y }
		if v.z < min_z { min_z = v.z }
		if v.x > max_x { max_x = v.x }
		if v.y > max_y { max_y = v.y }
		if v.z > max_z { max_z = v.z }
	}
	center := Vec3{
		x: (min_x + max_x) * 0.5
		y: (min_y + max_y) * 0.5
		z: (min_z + max_z) * 0.5
	}
	extent := Vec3{
		x: max_x - min_x
		y: max_y - min_y
		z: max_z - min_z
	}
	mut max_extent := extent.x
	if extent.y > max_extent { max_extent = extent.y }
	if extent.z > max_extent { max_extent = extent.z }
	if max_extent <= 0.0001 {
		max_extent = 1.0
	}
	scale := f32(2.0 / max_extent)
	mut normalized := []Vec3{cap: model.vertices.len}
	for v in model.vertices {
		normalized << Vec3{
			x: (v.x - center.x) * scale
			y: (v.y - center.y) * scale
			z: (v.z - center.z) * scale
		}
	}
	return Model{vertices: normalized, faces: model.faces}
}

fn rotate_xyz(v Vec3, angle f32) Vec3 {
	sy := math.sin(angle)
	cy := math.cos(angle)
	sx := math.sin(angle * 0.57)
	cx := math.cos(angle * 0.57)

	mut x := f64(v.x)
	mut y := f64(v.y)
	mut z := f64(v.z)

	// Rotate around Y.
	nx := x * cy + z * sy
	nz := -x * sy + z * cy
	x = nx
	z = nz

	// Rotate around X.
	ny := y * cx - z * sx
	nz2 := y * sx + z * cx
	y = ny
	z = nz2

	return Vec3{
		x: f32(x)
		y: f32(y)
		z: f32(z)
	}
}

fn project(v Vec3, center Vec2, focal f32) Vec2 {
	invz := focal / v.z
	return Vec2{
		x: center.x + v.x * invz
		y: center.y - v.y * invz
	}
}

fn clamp01(v f32) f32 {
	if v < 0 {
		return 0
	}
	if v > 1 {
		return 1
	}
	return v
}

fn lerp_color(a gg.Color, b gg.Color, t f32) gg.Color {
	u := clamp01(t)
	r := u8(int(f32(a.r) + (f32(b.r) - f32(a.r)) * u))
	g := u8(int(f32(a.g) + (f32(b.g) - f32(a.g)) * u))
	bl := u8(int(f32(a.b) + (f32(b.b) - f32(a.b)) * u))
	return gg.rgb(r, g, bl)
}

fn fallback_cube_model() Model {
	vertices := [
		Vec3{-1, -1, -1},
		Vec3{1, -1, -1},
		Vec3{1, 1, -1},
		Vec3{-1, 1, -1},
		Vec3{-1, -1, 1},
		Vec3{1, -1, 1},
		Vec3{1, 1, 1},
		Vec3{-1, 1, 1},
	]
	faces := [
		Face{0, 1, 2}, Face{0, 2, 3},
		Face{4, 5, 6}, Face{4, 6, 7},
		Face{0, 1, 5}, Face{0, 5, 4},
		Face{1, 2, 6}, Face{1, 6, 5},
		Face{2, 3, 7}, Face{2, 7, 6},
		Face{3, 0, 4}, Face{3, 4, 7},
	]
	return Model{vertices: vertices, faces: faces}
}
