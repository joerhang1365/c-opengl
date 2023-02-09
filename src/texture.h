#ifndef TEXTURE_H
#define TEXTURE_H

#include <stdio.h>
#include <glad/glad.h> 
#include <stb_image.h>

/*
 * A texture. Too lazy to write thing but I will later.
 */
typedef struct 
{
   unsigned int ID;
   char *filePath;
   unsigned char *localBuffer;
   int width;
   int height;
   int bitsPerPixel;
} texture;

void texture_create(char *filePath, texture *tex);
void texture_bind(unsigned int slot, texture tex);
void texture_unbind();
void texture_delete(texture *tex);

#endif
