#include "color.h"

void color_create(float red, float green, float blue, float alpha, color *col)
{
   col->red = red;
   col->green = green;
   col->blue = blue;
   col->alpha = alpha;
}
