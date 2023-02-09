#ifndef SHADER_H
#define SHADER_H

#include <glad/glad.h>
#include <stdio.h>
#include <cglm/cglm.h>

#define MAX_SHADER_SIZE (1024 * 1024)

/*
 * A shader is a program that runs on the GPU to perform operations on the
 * vertices and/or pixels of a scene. These operations can be tranformations,
 * lighting, and texturing.
 * The two types of shaders used here are vertex shaders and fragment shaders.
 */

typedef unsigned int shader;

void shader_create(const char *vertexShaderPath, const char *fragmentShaderPath, shader *sd);
void shader_setUniform4f(char *name, float value1, float value2, float float1, float float2, shader sd);
void shader_setUniform1i(char *name, int value, shader sd);
void shader_setUniformMat4f(char *name, mat4 *matrix, shader sd);
void shader_bind(shader sd);
void shader_unbind();
void shader_delete(shader *sd);

#endif
