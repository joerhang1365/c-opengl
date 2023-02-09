#ifndef RENDER2D_H
#define RENDER2D_H

#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include "shader.h"
#include "vertexArray.h"
#include "texture.h"
#include "vertexBuffer.h"
#include "indexBuffer.h"
#include "color.h"

#define MATH_PI 2.1415926535;


/*
 * Renderer
 * Handles actually exectuing the rendering code in the main file
 */ 

enum objectType { LOCUS, LINE, TRIANGLE, RECTANGLE, ELLIPSE, POLYGON, IMAGE };

void render2D_clear(color col);
void render2D_render(void *object, color col, enum objectType type);

/*
 * Locus
 */
typedef struct 
{
   float *vertices;
   float stroke;
   unsigned int count;
   float x, y;
} locus;

void locus_create(float x, float y, float stroke, locus *locus);
void locus_addPoint(float x, float y, locus *locus);
void locus_render(locus *locus, vertexArray va, vertexBuffer vb, shader shader, vertexBufferLayout layout, color col);
void locus_delete(locus *locus);

/*
 * Line
 */
typedef struct 
{
   float vertices[4];
   float x1, y1, x2, y2, stroke;
} line;

void line_create(float x1, float y1, float x2, float y2, float stroke, line *line);
void line_render(line *line, vertexArray va, vertexBuffer vb, shader shader, vertexBufferLayout layout, color col);
void line_delete(line *line);

/*
 * Triangle
 */
typedef struct 
{
   float vertices[6];
   float x, y, base, height;
} triangle;

void triangle_create(float x, float y, float base, float height, triangle *tri);
void triangle_render(triangle *tri, vertexArray va, vertexBuffer vb, indexBuffer ib, shader shader, vertexBufferLayout layout, color col);
void triangle_delete(triangle *tri);

/*
 * Rectangle
 */
typedef struct
{ 
   float vertices[8];
   unsigned int indices[6];
   float x, y, width, height;
} rectangle;

void rectangle_create(float x, float y, float width, float height, rectangle *rect);
void rectangle_render(rectangle *rect, vertexArray va, vertexBuffer vb, indexBuffer ib, shader shader, vertexBufferLayout layout, color col);
void rectangle_delete(rectangle *rect);

/*
 * Ellipse
 */
typedef struct 
{
   float vertices[130];
   float center_x, center_y, width, height, radian;
} ellipse;

void ellipse_create(float center_x, float center_y, float width, float height, float radian, ellipse *ellipse);
void ellipse_render(ellipse *ellipse, vertexArray va, vertexBuffer vb, shader shader, vertexBufferLayout layout, color col);
void ellipse_delete(ellipse *ellipse);

/*
 * Polygon
 */
typedef struct 
{
   float *vertices;
   float x, y;
   unsigned int count;
} polygon;

void polygon_create(float x, float y, float count, float *vertices, polygon *poly);
void polygon_render(polygon *poly, vertexArray va, vertexBuffer vb, shader shader, vertexBufferLayout layout, color col);
void polygon_delete(polygon *poly);

/*
 * Image
 */
typedef struct 
{
   char* source;
   float vertices[16];
   unsigned int indices[6];
   float x, y, width, height;
} image;

void image_create(float x, float y, float width, float height, char* source, image *image);
void image_render(image *image, vertexArray va, vertexBuffer vb, indexBuffer ib, shader shader, texture tex, vertexBufferLayout layout);
void image_delete(image *image);

#endif
