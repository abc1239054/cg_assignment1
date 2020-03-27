// Fragment shader
#version 150

out vec3 frag_color;
in vec3 v_color;

void main() {
    frag_color = v_color;
    
}
