#ifndef VERTEX_BUFFER_LAYOUT_H
#define VERTEX_BUFFER_LAYOUT_H

#include <glad/glad.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

/*
 * The vertex buffer layout handles all of the reallocating and adding elements to the vertex buffer.
 * The vertex array then takes all of the elements and does the glVertexAttribPointer thing
 * and adjusts the offset
*/

typedef struct 
{
   unsigned int type;
   unsigned int count;
   bool normalized;
} vertexBufferElement;

typedef struct
{
   vertexBufferElement *elements;
   unsigned int stride;
   unsigned int elementCount;
} vertexBufferLayout;

void vertexBufferLayout_add(vertexBufferLayout *layout, unsigned int type, unsigned int count, bool normalized);
void vertexBufferLayout_freeMemory(vertexBufferLayout *layout);

#endif
