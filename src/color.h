#ifndef COLOR_H
#define COLOR_H

/*
 * Stores red, green, and blue color values.
 */

typedef struct 
{
   float red;
   float green;
   float blue;
   float alpha;
} color;

void color_create(float red, float green, float blue, float alpha, color *col);

#endif
