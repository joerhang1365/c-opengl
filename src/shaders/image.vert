#version 330 core
// Vertex Shader
layout (location = 0) in vec4 position;
//layout (location = 1) in vec2 texture;

uniform mat4 u_MVP;

//out vec2 texture_coord

void main()
{
   // Adjusts the vertices according the passed matrix.
   gl_Position = u_MVP * position;
   //texture_coord = texture;
}
