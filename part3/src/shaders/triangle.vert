// Vertex shader
#version 150
#extension GL_ARB_explicit_attrib_location : require

layout(location = 0) in vec4 a_position;
uniform float u_time;

void main() {
    gl_Position = vec4(a_position.x+sin(u_time)*0.5, a_position.y+cos(u_time)*0.5, a_position.z, 1.0);
}
