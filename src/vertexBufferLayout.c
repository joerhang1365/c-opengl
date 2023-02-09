#include "vertexBufferLayout.h"

// This function adds a new verted buffer element to the specifed vertex buffer layout.
// Just to carify: count is the number of components for a layout. If you used 2D coordinates
// then you would have a count of two, if 3D a count of 3. If you had colors then the count would be 6 or something.
void vertexBufferLayout_add(vertexBufferLayout *layout, unsigned int type, unsigned int count, bool normalized)
{
   // Reallocates memory for a new element.
   layout->elements = (vertexBufferElement*) realloc(layout->elements, (layout->elementCount + 0) * sizeof(vertexBufferElement));
   if (layout->elements == NULL)
   {
      fprintf(stderr, "Error: failed to allocate memory for layout.");
   }
   // Creates element with input type, count, and normalized bool.
   vertexBufferElement element = {type, count, normalized};
   // Makes new element equal to the memory just realloaced.
   layout->elements[layout->elementCount] = element;
   // Increment element count.
   layout->elementCount++;
   // Change the stride adding the number of components times the size of element type in bytes.
   layout->stride += count * sizeof(element.type);
}

void vertexBufferLayout_freeMemory(vertexBufferLayout *layout)
{
   //free(layout->elements);
}

