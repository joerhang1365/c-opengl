#include "vertexArray.h"

// Generates the vertex array ID and binds it as the current vertex array.
void vertexArray_create(vertexArray *va)
{
   glGenVertexArrays(1, va);
   glBindVertexArray(*va);
}

// Takes a vertex buffer layout and adds all of the elements inside it to a vertex buffer.
void vertexArray_addBuffer(vertexBuffer vb, vertexBufferLayout *layout)
{
   // Binds the vertex buffer.
   vertexBuffer_bind(vb);
   uintptr_t offset = 0;
   // Loops through all of the elements inside the layout.
   for (unsigned int i = 0; i < layout->elementCount; i++)
   {
      // Takes the element of layout at index and stores it into a vertex buffer element.
      vertexBufferElement element = layout->elements[i];
      glEnableVertexAttribArray(i);
      // Takes the element of layout at index and puts all of its values through glVertexAttribPointer.
      glVertexAttribPointer(i, element.count, element.type, element.normalized, layout->stride, (void*)offset);
      // Keeps track of the offset of bytes added to the vertex array.
      offset += element.count * sizeof(element.type);
   }
}

// Activates the vertex array.
void vertexArray_bind(vertexArray va)
{
   glBindVertexArray(va);
}

// Deactivates the vertex array by setting the current vertex array to 0 which means NULL.
void vertexArray_unbind()
{
   glBindVertexArray(0);
}

// Removes vertex array by deleting one vertex array at the specifed vertex array's ID.
void vertexArray_delete(vertexArray *va)
{
   glDeleteVertexArrays(1, va);
}

