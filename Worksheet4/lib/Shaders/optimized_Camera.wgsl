struct tint_symbol {
  /* @offset(0) */
  tint_symbol_1 : f32,
  /* @offset(4) */
  tint_symbol_2 : f32,
  /* @offset(8) */
  tint_symbol_3 : f32,
  /* @offset(12) */
  tint_symbol_4 : f32,
}

struct tint_symbol_8 {
  /* @offset(0) */
  tint_symbol_9 : tint_symbol,
  /* @offset(16) */
  tint_symbol_10 : vec2f,
}

struct tint_symbol_11_block {
  /* @offset(0) */
  inner : tint_symbol_8,
}

var<private> tint_symbol_24_1 : vec2f;

var<private> value = vec4f();

var<private> value_1 = vec4f();

@group(0) @binding(0) var<uniform> tint_symbol_11 : tint_symbol_11_block;

fn tint_symbol_12(tint_symbol_13 : tint_symbol, tint_symbol_14 : tint_symbol) -> tint_symbol {
  return tint_symbol(((tint_symbol_13.tint_symbol_1 * tint_symbol_14.tint_symbol_1) - (tint_symbol_13.tint_symbol_2 * tint_symbol_14.tint_symbol_2)), ((tint_symbol_13.tint_symbol_1 * tint_symbol_14.tint_symbol_2) + (tint_symbol_13.tint_symbol_2 * tint_symbol_14.tint_symbol_1)), ((((tint_symbol_13.tint_symbol_1 * tint_symbol_14.tint_symbol_3) + (tint_symbol_13.tint_symbol_2 * tint_symbol_14.tint_symbol_4)) + (tint_symbol_13.tint_symbol_3 * tint_symbol_14.tint_symbol_1)) - (tint_symbol_13.tint_symbol_4 * tint_symbol_14.tint_symbol_2)), ((((tint_symbol_13.tint_symbol_1 * tint_symbol_14.tint_symbol_4) - (tint_symbol_13.tint_symbol_2 * tint_symbol_14.tint_symbol_3)) + (tint_symbol_13.tint_symbol_3 * tint_symbol_14.tint_symbol_2)) + (tint_symbol_13.tint_symbol_4 * tint_symbol_14.tint_symbol_1)));
}

fn tint_symbol_15(tint_symbol_13_1 : tint_symbol) -> tint_symbol {
  return tint_symbol(tint_symbol_13_1.tint_symbol_1, -(tint_symbol_13_1.tint_symbol_2), -(tint_symbol_13_1.tint_symbol_3), -(tint_symbol_13_1.tint_symbol_4));
}

fn tint_symbol_16(tint_symbol_17 : tint_symbol, tint_symbol_18 : tint_symbol) -> tint_symbol {
  let x_84 = tint_symbol_15(tint_symbol_18);
  let x_85 = tint_symbol_12(tint_symbol_17, x_84);
  let x_86 = tint_symbol_12(tint_symbol_18, x_85);
  return x_86;
}

fn tint_symbol_19(tint_symbol_17_1 : vec2f) -> tint_symbol {
  return tint_symbol(0.0f, 1.0f, tint_symbol_17_1.y, -(tint_symbol_17_1.x));
}

fn tint_symbol_20(tint_symbol_17_2 : tint_symbol) -> vec2f {
  return vec2f((-(tint_symbol_17_2.tint_symbol_4) / tint_symbol_17_2.tint_symbol_2), (tint_symbol_17_2.tint_symbol_3 / tint_symbol_17_2.tint_symbol_2));
}

fn tint_symbol_21(tint_symbol_17_3 : vec2f, tint_symbol_18_1 : tint_symbol) -> vec2f {
  let x_113 = tint_symbol_19(tint_symbol_17_3);
  let x_114 = tint_symbol_16(x_113, tint_symbol_18_1);
  let x_115 = tint_symbol_20(x_114);
  return x_115;
}

fn tint_symbol_23_inner(tint_symbol_24 : vec2f) -> vec4f {
  let x_125 = tint_symbol_11.inner.tint_symbol_9;
  let x_120 = tint_symbol_15(x_125);
  let x_126 = tint_symbol_21(tint_symbol_24, x_120);
  let x_131 = (x_126 * tint_symbol_11.inner.tint_symbol_10);
  return vec4f(x_131.x, x_131.y, 0.0f, 1.0f);
}

fn tint_symbol_23_1() {
  let x_140 = tint_symbol_24_1;
  let x_139 = tint_symbol_23_inner(x_140);
  value = x_139;
  return;
}

struct tint_symbol_23_out {
  @builtin(position)
  value_2 : vec4f,
}

@vertex
fn vertexMain(@location(0) tint_symbol_24_1_param : vec2f) -> tint_symbol_23_out {
  tint_symbol_24_1 = tint_symbol_24_1_param;
  tint_symbol_23_1();
  return tint_symbol_23_out(value);
}

fn tint_symbol_27_inner() -> vec4f {
  return vec4f(0.69999998807907104492f, 0.5f, 0.20000000298023223877f, 1.0f);
}

fn tint_symbol_27_1() {
  let x_150 = tint_symbol_27_inner();
  value_1 = x_150;
  return;
}

struct tint_symbol_27_out {
  @location(0)
  value_1_1 : vec4f,
}

@fragment
fn fragmentMain() -> tint_symbol_27_out {
  tint_symbol_27_1();
  return tint_symbol_27_out(value_1);
}
