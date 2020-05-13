// Fragment shader
#version 450

in vec3 v_normal;
out vec4 frag_color;

void main() {
    //frag_color = vec4(0.6, 1.0, 1.0, 0.8);
    frag_color = vec4(v_normal, 1.0)*0.5+0.5;
}
