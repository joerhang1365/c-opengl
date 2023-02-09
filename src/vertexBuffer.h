#ifndef VERTEX_BUFFER_H
#define VERTEX_BUFFER_H

#include <glad/glad.h>
#include <stdio.h>

/*
 * The vertex buffer stores a large number of vertices in the GPU memory.
 * This data can be positions, normals, colors, and texture coordinates.
 */

typedef unsigned int vertexBuffer;

void vertexBuffer_create(unsigned int size, float *vertices, vertexBuffer *vb);
void vertexBuffer_bind(vertexBuffer vb);
void vertexBuffer_unbind();
void vertexBuffer_delete(vertexBuffer *vb);

#endif
