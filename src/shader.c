#include "shader.h"

// This functions takes the specifed paths to the vertex shader and the fragment shader
// and writes that to a file, reads the file, compiles the file into a shader, and linkers
// the shader to the shader ID shader program.
// The files are located in shaders/.
void shader_create(const char *vertexShaderPath, const char *fragmentShaderPath, shader *sd)
{
   unsigned int vertexShaderID = glCreateShader(GL_VERTEX_SHADER);
   unsigned int fragmentShaderID = glCreateShader(GL_FRAGMENT_SHADER);
   
   // Read in vertex shader code.
   char vertexShaderCode[MAX_SHADER_SIZE];
   FILE *vertexShaderFile = fopen(vertexShaderPath, "rb");
   if (vertexShaderFile == NULL)
   {
      fprintf(stderr, "Error: could not find vertex shader file in path.\n");
   }
   size_t readCount = fread(vertexShaderCode, 1, MAX_SHADER_SIZE, vertexShaderFile);
   fclose(vertexShaderFile);
   if(readCount == 0)
   {
      fprintf(stderr, "Error: could not read vertex shader file.\n");
   }

   // Read int fragment shader code.
   char fragmentShaderCode[MAX_SHADER_SIZE];
   FILE *fragmentShaderFile = fopen(fragmentShaderPath, "rb");
   if (fragmentShaderFile == NULL)
   {
      fprintf(stderr, "Error: could not find fragment shader file in path.\n");
   }
   readCount = fread(fragmentShaderCode, 1, MAX_SHADER_SIZE, fragmentShaderFile);
   fclose(fragmentShaderFile);
   if(readCount == 0)
   {
      fprintf(stderr, "Error: could not read fragment shader file.\n");
   }

   // Create vertex shader.
   const char *vertexSourcePointer = vertexShaderCode;
   glShaderSource(vertexShaderID, 1, &vertexSourcePointer, NULL);
   glCompileShader(vertexShaderID);
   // Check for vertex shader compile errors.
   int success;
   glGetShaderiv(vertexShaderID, GL_COMPILE_STATUS, &success);
   if(!success)
   {
      fprintf(stderr, "Error: vertex shader failed to compile.\n");
   }
   
   // Create fragment shader.
   const char *fragmentSourcePointer = fragmentShaderCode;
   glShaderSource(fragmentShaderID, 1, &fragmentSourcePointer, NULL);
   glCompileShader(fragmentShaderID);
   // Check for fragment shader compile errors.
   glGetShaderiv(fragmentShaderID, GL_COMPILE_STATUS, &success);
   if(!success)
   {
      fprintf(stderr, "Error: fragment shader failed to compile.\n");
   }

   *sd = glCreateProgram();
   // Link vertex and fragment shaders.
   glAttachShader(*sd, vertexShaderID);
   glAttachShader(*sd, fragmentShaderID);
   glLinkProgram(*sd);
   // Check for linking errors.
   glGetProgramiv(*sd, GL_LINK_STATUS, &success);
   if(!success)
   {
      fprintf(stderr, "Error: shader program failed to link.\n");
   }

   // Delatch and delete the shaders at the end because they are already stored in the shader program.
   glDetachShader(*sd, vertexShaderID);
   glDetachShader(*sd, fragmentShaderID);
   glDeleteShader(vertexShaderID);
   glDeleteShader(fragmentShaderID);
}

// A uniform is used to pass a value to a shader after compilation.
// Takes in a shader and the name of the uniform along with the values to set it to.
// This uniform takes a vec4 of floats.
void shader_setUniform4f(char *name, float value1, float value2, float float1, float float2, shader sd)
{
   unsigned int location = glGetUniformLocation(sd, name); 
   glUniform4f(location, value1, value2, float1, float2);
}

// Sets the value of a sampler such as a texture.
void shader_setUniform1i(char *name, int value, shader sd)
{
   unsigned int location = glGetUniformLocation(sd, name);
   glUniform1i(location, value);
}

// Sets the value of a matrix4.
void shader_setUniformMat4f(char *name, mat4 *matrix, shader sd)
{
   unsigned int location = glGetUniformLocation(sd, name);
   glUniformMatrix4fv(location, 1, GL_FALSE, matrix[0][0]);
}

// Activate the specifed shader program.
void shader_bind(shader sd)
{
   glUseProgram(sd);
}

// Deactivate shader program by setting shader program to 0 which means NULL.
void shader_unbind()
{
   glUseProgram(0);
}

// Remove the shader program by specifying the shader program ID.
void shader_delete(shader *sd)
{
   glDeleteProgram(*sd);
}

