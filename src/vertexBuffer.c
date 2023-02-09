#include "vertexBuffer.h"

// Generate and bind the vertex buffer as the current vertex buffer.
// Takes array of vertices and the size.
void vertexBuffer_create(unsigned int size, float *vertices, vertexBuffer *vb)
{
   glGenBuffers(1, vb);
   glBindBuffer(GL_ARRAY_BUFFER, *vb);
   // Copy vertices to the buffer data.
   // Size specifes the number of bytes the buffer needs to store.
   glBufferData(GL_ARRAY_BUFFER, size, vertices, GL_STATIC_DRAW);
}

// Activates the vertex buffer.
void vertexBuffer_bind(vertexBuffer vb)
{
   glBindBuffer(GL_ARRAY_BUFFER, vb);
}

// Deactivates the vertex buffer by setting the current vertex buffer to 0 which means NULL.
void vertexBuffer_unbind()
{
   glBindBuffer(GL_ARRAY_BUFFER, 0);
}

// Removes vertex buffer by deleting one vertex buffer at the specifed ID. 
void vertexBuffer_delete(vertexBuffer *vb)
{
   glDeleteBuffers(1, vb);
}

