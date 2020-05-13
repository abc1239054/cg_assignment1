// Vertex shader
#version 450
#extension GL_ARB_explicit_attrib_location : require

layout(location = 0) in vec4 a_position;
layout(location = 1) in vec3 a_normal;

//uniform vec3 light_position; // The position of the light source
uniform mat4 u_mv;
uniform mat4 u_mvp;

out vec3 v_normal;

void main() {
    v_normal = a_normal;
    gl_Position = u_mvp * a_position;
}
