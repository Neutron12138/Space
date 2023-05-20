shader_type canvas_item;

uniform float transparent;

void fragment() {
	COLOR = vec4(COLOR.xyz,COLOR.a * transparent);
}
