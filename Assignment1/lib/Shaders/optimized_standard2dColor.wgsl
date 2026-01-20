struct tint_symbol {
  /* @offset(0) */
  tint_symbol_1 : vec4f,
  /* @offset(16) */
  tint_symbol_2 : vec4f,
}

var<private> tint_symbol_4_1 : vec2f;

var<private> tint_symbol_2_1 : vec4f;

var<private> tint_symbol_1_1 = vec4f();

var<private> tint_symbol_2_2 = vec4f();

var<private> tint_symbol_2_3 : vec4f;

var<private> value = vec4f();

fn tint_symbol_3_inner(tint_symbol_4 : vec2f, tint_symbol_2 : vec4f) -> tint_symbol {
  var tint_symbol_5 = tint_symbol(vec4f(), vec4f());
  tint_symbol_5.tint_symbol_1 = vec4f(tint_symbol_4.x, tint_symbol_4.y, 0.0f, 1.0f);
  tint_symbol_5.tint_symbol_2 = tint_symbol_2;
  let x_36 = tint_symbol_5;
  return x_36;
}

fn tint_symbol_3_1() {
  let x_42 = tint_symbol_4_1;
  let x_43 = tint_symbol_2_1;
  let x_41 = tint_symbol_3_inner(x_42, x_43);
  tint_symbol_1_1 = x_41.tint_symbol_1;
  tint_symbol_2_2 = x_41.tint_symbol_2;
  return;
}

struct tint_symbol_3_out {
  @builtin(position)
  tint_symbol_1_1_1 : vec4f,
  @location(0)
  tint_symbol_2_2_1 : vec4f,
}

@vertex
fn vertexMain(@location(0) tint_symbol_4_1_param : vec2f, @location(1) tint_symbol_2_1_param : vec4f) -> tint_symbol_3_out {
  tint_symbol_4_1 = tint_symbol_4_1_param;
  tint_symbol_2_1 = tint_symbol_2_1_param;
  tint_symbol_3_1();
  return tint_symbol_3_out(tint_symbol_1_1, tint_symbol_2_2);
}

fn tint_symbol_6_inner(tint_symbol_2_4 : vec4f) -> vec4f {
  return tint_symbol_2_4;
}

fn tint_symbol_6_1() {
  let x_53 = tint_symbol_2_3;
  let x_52 = tint_symbol_6_inner(x_53);
  value = x_52;
  return;
}

struct tint_symbol_6_out {
  @location(0)
  value_1 : vec4f,
}

@fragment
fn fragmentMain(@location(0) tint_symbol_2_3_param : vec4f) -> tint_symbol_6_out {
  tint_symbol_2_3 = tint_symbol_2_3_param;
  tint_symbol_6_1();
  return tint_symbol_6_out(value);
}
