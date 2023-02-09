#version 330 core
// Fragment shader

uniform sampler2D u_Texture;

in vec2 texture_coord

out vec4 color;

void main()
{
   color = texture(u_Texture, texture_coord);
}
