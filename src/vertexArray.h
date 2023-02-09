#ifndef VERTEX_ARRAY_H
#define VERTEX_ARRAY_H

#include <glad/glad.h>
#include "vertexBuffer.h"
#include "vertexBufferLayout.h"

/*
 * The vertex array stores the state needed to supply vertex data to the
 * OpenGL pipeline. This allows you to specify the layout of vertex data
 * in memory and the location of the vertex attributes in that data.
 */

typedef unsigned int vertexArray;

void vertexArray_create(vertexArray *va);
void vertexArray_addBuffer(vertexBuffer vb, vertexBufferLayout *layout);
void vertexArray_bind(vertexArray va);
void vertexArray_unbind();
void vertexArray_delete(vertexArray *va);

#endif
