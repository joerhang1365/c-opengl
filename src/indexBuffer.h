#ifndef INDEX_BUFFER_H
#define INDEX_BUFFER_H

#include <glad/glad.h>

/*
 * The index buffer contains indices that reference into the vertex buffer. The index buffer
 * allows the user to specify which vertices to draw in what order. This makes it so you can
 * reuse vertices to draw a shape adjacent to it.
 */

typedef struct 
{
   unsigned int ID;
   unsigned int count;
} indexBuffer;

void indexBuffer_create(unsigned int count, unsigned int *indices, indexBuffer *ib);
void indexBuffer_bind(indexBuffer ib);
void indexBuffer_unbind();
void indexBuffer_delete(indexBuffer *ib);

#endif
