#include "texture.h"

void texture_create(char *filePath, texture *tex)
{
   // Makes are texture upside down. OpenGL expects a texture to start
   // at the bottom left while most image files store from top left.
   stbi_set_flip_vertically_on_load(1);

   glGenTextures(1, &tex->ID);
   glBindTexture(GL_TEXTURE_BINDING_2D, tex->ID);
   // Tells OpenGL what to do if texture is too big or too small for number of pixels.
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
   // S is X and T is Y.
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP);
   glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_WRAP_T, GL_CLAMP);
   // Add texture data to our texture.
   tex->localBuffer = stbi_load(filePath, &tex->width, &tex->height, &tex->bitsPerPixel, 4);
   if (tex->localBuffer)
   {
      // Look at documentation bitch.
      glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA8, tex->width, tex->height, 0, GL_RGBA, GL_UNSIGNED_BYTE, tex->localBuffer);
      glBindTexture(GL_TEXTURE_2D, 0);
   }
   else 
   {
      fprintf(stderr, "Error: could not load texture.\n");
   }
   // Free the memory for the image buffer.
   if(tex->localBuffer)
   {
      stbi_image_free(tex->localBuffer);
   }
}

// Activates the texture at the specified ID. The unigned int slot = 0 tells OpenGL which slot to put
// texture if we have multiple textures at a time.
// The slot is being werid here. I have to set the texture to one above the slot I give it.
void texture_bind(unsigned int slot, texture tex)
{
   // GL_TEXTURE0 is the first slot of textures. If you want to add any more must add number by slot.
   glActiveTexture(GL_TEXTURE0 + slot);
   glBindTexture(GL_TEXTURE_2D, tex.ID);
}

void texture_unbind()
{
   glBindTexture(GL_TEXTURE_2D, 0);
}

void texture_delete(texture *tex)
{
   glDeleteTextures(1, &tex->ID);
}

