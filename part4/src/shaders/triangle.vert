// Vertex shader
#version 450
#extension GL_ARB_explicit_attrib_location : require

layout(location = 0) in vec4 a_position;

void main() {
    gl_Position = a_position;
}
