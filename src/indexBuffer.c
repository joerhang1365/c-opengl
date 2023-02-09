#include "indexBuffer.h"

// Generates and binds the index buffer.
void indexBuffer_create(unsigned int count, unsigned int *indices, indexBuffer *ib)
{
   // Sets the specifed count to the index buffer's count.
   ib->count = count;
   glGenBuffers(1, &ib->ID);
   glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, ib->ID);
   // Allocates memory and stores data within index buffer.
   glBufferData(GL_ELEMENT_ARRAY_BUFFER, count * sizeof(unsigned int), indices, GL_STATIC_DRAW);
}

// Activates index buffer as current index buffer.
void indexBuffer_bind(indexBuffer ib)
{
   glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, ib.ID);
}

// Deactivates index buffer by setting the current buffer to 0 which means NULL.
void indexBuffer_unbind()
{
   glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
}

// Removes index buffer by deleting one index buffer at specifed ID.
void indexBuffer_delete(indexBuffer *ib)
{
   glDeleteBuffers(1, &ib->ID);
}

