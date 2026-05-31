module main

import gg
import math
import time
import webgpu

const win_w = 960

const win_h = 640

struct Vec2 {
	x f32
	y f32
}

struct App {
mut:
	gg       &gg.Context = unsafe { nil }
	angle    f32
	last_tick i64
}

fn main() {
	mut app := &App{
		last_tick: time.ticks()
	}
	app.gg = gg.new_context(
		width: win_w
		height: win_h
		create_window: true
		window_title: 'v-webgpu visual test: rotating V logo'
		bg_color: gg.rgb(10, 14, 24)
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
	app.angle += dt * 1.3
	app.draw()
}

fn (mut app App) draw() {
	app.gg.begin()
	draw_background(mut app.gg)

	center := Vec2{
		x: win_w / 2
		y: win_h / 2
	}
	draw_rotating_v_logo(mut app.gg, center, 220, app.angle)

	tag := webgpu.bindings_tag()

	app.gg.draw_text(20, 28, 'Visual test: rotating V logo', gg.TextCfg{
		color: gg.rgb(230, 236, 255)
		size: 20
	})
	app.gg.draw_text(20, 54, 'webgpu import ok (${tag})', gg.TextCfg{
		color: gg.rgb(151, 214, 255)
		size: 16
	})
	app.gg.draw_text(20, 78, 'Press ESC to close', gg.TextCfg{
		color: gg.rgb(161, 173, 201)
		size: 16
	})
	app.gg.end()
}

fn draw_background(mut g gg.Context) {
	for y in 0 .. win_h {
		t := f32(y) / f32(win_h)
		r := u8(10 + int(20.0 * t))
		gch := u8(14 + int(18.0 * t))
		b := u8(24 + int(36.0 * t))
		g.draw_line(0, y, win_w, y, gg.rgb(r, gch, b))
	}
}

fn draw_rotating_v_logo(mut g gg.Context, center Vec2, size f32, angle f32) {
	left_top := transform_point(Vec2{ x: -0.55, y: -0.55 }, center, size, angle)
	joint := transform_point(Vec2{ x: 0.0, y: 0.55 }, center, size, angle)
	right_top := transform_point(Vec2{ x: 0.55, y: -0.55 }, center, size, angle)

	shadow_offset := Vec2{ x: 8, y: 8 }
	draw_thick_line(mut g, left_top + shadow_offset, joint + shadow_offset, 20, gg.rgba(8, 12, 20, 150))
	draw_thick_line(mut g, joint + shadow_offset, right_top + shadow_offset, 20, gg.rgba(8, 12, 20, 150))

	draw_thick_line(mut g, left_top, joint, 20, gg.rgb(69, 141, 255))
	draw_thick_line(mut g, joint, right_top, 20, gg.rgb(73, 199, 255))

	ring_radius := size * 0.9
	g.draw_circle_empty(center.x, center.y, ring_radius, gg.rgba(111, 137, 186, 80))
}

fn draw_thick_line(mut g gg.Context, a Vec2, b Vec2, thickness int, color gg.Color) {
	dx := b.x - a.x
	dy := b.y - a.y
	len := math.sqrt(dx * dx + dy * dy)
	if len <= 0.0001 {
		return
	}
	nx := -dy / len
	ny := dx / len
	half := thickness / 2
	for i in -half .. half + 1 {
		off := f32(i)
		g.draw_line(
			int(a.x + nx * off),
			int(a.y + ny * off),
			int(b.x + nx * off),
			int(b.y + ny * off),
			color,
		)
	}
}

fn transform_point(p Vec2, center Vec2, size f32, angle f32) Vec2 {
	s := math.sin(angle)
	c := math.cos(angle)
	x := p.x * size
	y := p.y * size
	return Vec2{
		x: center.x + f32(x * c - y * s)
		y: center.y + f32(x * s + y * c)
	}
}

fn (a Vec2) + (b Vec2) Vec2 {
	return Vec2{
		x: a.x + b.x
		y: a.y + b.y
	}
}
