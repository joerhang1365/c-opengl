#version 330 core
// Vertex Shader
layout (location = 0) in vec4 position;

uniform mat4 u_MVP;

void main()
{
   // Adjusts the vertices according the passed matrix.
   gl_Position = u_MVP * position;
}
