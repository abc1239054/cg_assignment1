// Vertex shader
#version 150
#extension GL_ARB_explicit_attrib_location : require

layout(location = 0) in vec4 a_position;

void main()
{
    gl_Position = vec4(-a_position.xyz, 1.0);
}
