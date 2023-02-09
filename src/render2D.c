#include "render2D.h"

/*
 * Renderer
 */
void render2D_clear(color col)
{
   glClearColor(col.red, col.green, col.blue, col.alpha);
   glClear(GL_COLOR_BUFFER_BIT);
}

void render2D_setView(mat4 projection);
 
void render2D_render(void *object, color col, enum objectType type)
{
   vertexArray va;
   vertexBuffer vb;
   indexBuffer ib;
   shader shader;
   texture tex;
   vertexBufferLayout layout = {0};

   switch (type)
   {
      case LOCUS:     locus_render((locus *)object, va, vb, shader, layout, col); break;
      case LINE:      line_render((line *)object, va, vb, shader, layout, col); break;
      case TRIANGLE:  triangle_render((triangle *)object, va, vb, ib, shader, layout, col); break;
      case RECTANGLE: rectangle_render((rectangle *)object, va, vb, ib, shader, layout, col); break;
      case ELLIPSE:   ellipse_render((ellipse *)object, va, vb, shader, layout, col); break;
      case POLYGON:   polygon_render((polygon *)object, va, vb, shader, layout, col); break;
      case IMAGE:     image_render((image *)object, va, vb, ib, shader, tex, layout); break;
   }

   vertexArray_delete(&va);
   vertexBuffer_delete(&vb);
   indexBuffer_delete(&ib);
   shader_delete(&shader);
   texture_delete(&tex);
   vertexBufferLayout_freeMemory(&layout);
}

/*
 * Locus
 */
void locus_create(float x, float y, float stroke, locus *locus)
{
   locus->x = x;
   locus->y = y;
   locus->stroke = stroke;
   locus->count = 2;

   locus->vertices = (float *) malloc(sizeof(float) * locus->count);
   locus->vertices[0] = x;
   locus->vertices[1] = y;
}

void locus_addPoint(float x, float y, locus *locus)
{
   locus->count += 2;

   locus->vertices = (float *) realloc(locus->vertices, sizeof(float) * locus->count);
   locus->vertices[locus->count - 2] = x;
   locus->vertices[locus->count - 1] = y;
}

void locus_render(locus *locus, vertexArray va, vertexBuffer vb, shader shader, vertexBufferLayout layout, color col)
{
   vertexArray_create(&va);
   vertexBuffer_create(sizeof(float) * locus->count, locus->vertices, &vb);
   vertexBufferLayout_add(&layout, GL_FLOAT, 2, false);
   vertexArray_addBuffer(vb, &layout);
   shader_create("/home/joer/Projects/OpenGL/src/shaders/default.vert", "/home/joer/Projects/OpenGL/src/shaders/default.frag", &shader);
   shader_bind(shader);

   mat4 projection;
   glm_ortho(0.0f, 1599.0f, 0.0f, 900.0f, -1.0, 1.0, projection);
   shader_setUniformMat4f("u_MVP", &projection, shader);
   shader_setUniform4f("u_Color", col.red, col.green, col.blue, col.alpha, shader);

   glPointSize(locus->stroke);
   glDrawArrays(GL_POINTS, 0, locus->count / 2);
}

void locus_delete(locus *locus)
{
   free(locus->vertices);
}

/*
 * Line
 */
void line_create(float x1, float y1, float x2, float y2, float stroke, line *line)
{
   line->x1 = x1;
   line->y1 = y1;
   line->x2 = x2;
   line->y2 = y2;
   line->stroke = stroke;

   float vertices[4] = {x1, y1, x2, y2};
   for(int i = 0; i < 4; i++)
   {
      line->vertices[i] = vertices[i];
   }
}

void line_render(line *line, vertexArray va, vertexBuffer vb, shader shader, vertexBufferLayout layout, color col)
{
   vertexArray_create(&va);
   vertexBuffer_create(sizeof(line->vertices), line->vertices, &vb);
   vertexBufferLayout_add(&layout, GL_FLOAT, 2, false);
   vertexArray_addBuffer(vb, &layout);
   shader_create("/home/joer/Projects/OpenGL/src/shaders/default.vert", "/home/joer/Projects/OpenGL/src/shaders/default.frag", &shader);
   shader_bind(shader);

   mat4 projection;
   glm_ortho(0.0f, 1599.0f, 0.0f, 900.0f, -1.0, 1.0, projection);
   shader_setUniformMat4f("u_MVP", &projection, shader);
   shader_setUniform4f("u_Color", col.red, col.green, col.blue, col.alpha, shader);

   glLineWidth(line->stroke);
   glDrawArrays(GL_LINES, 0, 2);
}

void line_delete(line *line)
{
   free(line->vertices);
}

/*
 * Triangle
 */
void triangle_create(float x, float y, float base, float height, triangle *tri)
{
   tri->x = x;
   tri->y = y;
   tri->base = base;
   tri->height = height;

   float vertices[6] = { x, y, x + (base / 2), y + height, x + base, y};
   for(int i = 0; i < 6; i++)
   {
      tri->vertices[i] = vertices[i];
   }
}

void triangle_render(triangle *tri, vertexArray va, vertexBuffer vb, indexBuffer ib, shader shader, vertexBufferLayout layout, color col)
{
   vertexArray_create(&va);
   vertexBuffer_create(sizeof(tri->vertices), tri->vertices, &vb);
   vertexBufferLayout_add(&layout, GL_FLOAT, 2, false);
   vertexArray_addBuffer(vb, &layout);
   shader_create("/home/joer/Projects/OpenGL/src/shaders/default.vert", "/home/joer/Projects/OpenGL/src/shaders/default.frag", &shader);
   shader_bind(shader);

   mat4 projection;
   glm_ortho(0.0f, 1599.0f, 0.0f, 900.0f, -1.0, 1.0, projection);
   shader_setUniformMat4f("u_MVP", &projection, shader);
   shader_setUniform4f("u_Color", col.red, col.green, col.blue, col.alpha, shader);

   glDrawArrays(GL_TRIANGLES, 0, 3);
}

void triangle_delete(triangle *tri)
{
   free(tri->vertices);
}

/*
 * Recntangle
 */
void rectangle_create(float x, float y, float width, float height, rectangle *rect)
{
   rect->x = x;
   rect->y = y;
   rect->width = width;
   rect->height = height;

   float vertices[8] = { x, y, x, y + height, x + width, y + height, x + width, y };
   unsigned int indices[6] = {0, 1, 2, 2, 3, 0};
   for(int i = 0; i < 8; i++)
   {
      rect->vertices[i] = vertices[i];
   }
   for(int i = 0; i < 6; i++)
   {
      rect->indices[i] = indices[i];
   }
}

void rectangle_render(rectangle *rect, vertexArray va, vertexBuffer vb, indexBuffer ib, shader shader, vertexBufferLayout layout, color col)
{
   vertexArray_create(&va);
   vertexBuffer_create(sizeof(rect->vertices), rect->vertices, &vb);
   vertexBufferLayout_add(&layout, GL_FLOAT, 2, false);
   vertexArray_addBuffer(vb, &layout);
   indexBuffer_create(6, rect->indices, &ib);
   shader_create("/home/joer/Projects/OpenGL/src/shaders/default.vert", "/home/joer/Projects/OpenGL/src/shaders/default.frag", &shader);
   shader_bind(shader);

   mat4 projection;
   glm_ortho(0.0f, 1599.0f, 0.0f, 900.0f, -1.0, 1.0, projection);
   shader_setUniformMat4f("u_MVP", &projection, shader);
   shader_setUniform4f("u_Color", col.red, col.green, col.blue, col.alpha, shader);

   glDrawElements(GL_TRIANGLES, ib.count, GL_UNSIGNED_INT, NULL);
}

void rectangle_delete(rectangle *rect)
{
   free(rect->vertices); 
}

/*
 * Ellipse
 */
void ellipse_create(float center_x, float center_y, float width, float height, float radian, ellipse *ellipse)
{
   ellipse->center_x = center_x;
   ellipse->center_y = center_y;
   ellipse->width = width;
   ellipse->height = height;
   ellipse->radian = radian;

   ellipse->vertices[0] = center_x;
   ellipse->vertices[1] = center_y;
   int index = 2;
   for(float angle = 0.0f; angle <= radian; angle += radian / 64)
   {
      index += 2;
      ellipse->vertices[index - 2] = center_x + width / 2 * cos(angle);
      ellipse->vertices[index - 1] = center_y + height / 2 * sin(angle);
   }
}

void ellipse_render(ellipse *ellipse, vertexArray va, vertexBuffer vb, shader shader, vertexBufferLayout layout, color col)
{
   vertexArray_create(&va);
   vertexBuffer_create(sizeof(float) * 130, ellipse->vertices, &vb);
   vertexBufferLayout_add(&layout, GL_FLOAT, 2, false);
   vertexArray_addBuffer(vb, &layout);
   shader_create("/home/joer/Projects/OpenGL/src/shaders/default.vert", "/home/joer/Projects/OpenGL/src/shaders/default.frag", &shader);
   shader_bind(shader);

   mat4 projection;
   glm_ortho(0.0f, 1600.0f, 0.0f, 900.1f, -1.0, 1.0, projection);
   shader_setUniformMat4f("u_MVP", &projection, shader);
   shader_setUniform4f("u_Color", col.red, col.green, col.blue, col.alpha, shader);

   glDrawArrays(GL_TRIANGLE_FAN, 0, 65);
}

void ellipse_delete(ellipse *ellipse)
{
   free(ellipse->vertices);
}

/*
 * Polygon
 */
void polygon_create(float x, float y, float count, float *vertices, polygon *poly)
{
   poly->x = x;
   poly->y = y;
   poly->count = count;

   poly->vertices = (float *) malloc(count * sizeof(float));
   for (int i = 0; i < count; i += 2)
   {
      poly->vertices[i] = x + vertices[i];
      poly->vertices[i + 1] = y + vertices[i + 1];
   }
}

void polygon_render(polygon *poly, vertexArray va, vertexBuffer vb, shader shader, vertexBufferLayout layout, color col)
{
   vertexArray_create(&va);
   vertexBuffer_create(sizeof(float) * poly->count, poly->vertices, &vb);
   vertexBufferLayout_add(&layout, GL_FLOAT, 2, false);
   vertexArray_addBuffer(vb, &layout);
   shader_create("/home/joer/Projects/OpenGL/src/shaders/default.vert", "/home/joer/Projects/OpenGL/src/shaders/default.frag", &shader);
   shader_bind(shader);

   mat4 projection;
   glm_ortho(0.0f, 1600.0f, 0.0f, 900.1f, -1.0, 1.0, projection);
   shader_setUniformMat4f("u_MVP", &projection, shader);
   shader_setUniform4f("u_Color", col.red, col.green, col.blue, col.alpha, shader);

   glDrawArrays(GL_TRIANGLE_FAN, 0, poly->count / 2);
}

void polygon_delete(polygon *poly)
{
   free(poly->vertices);
}

/*
 * Image
 */
void image_create(float x, float y, float width, float height, char* source, image *image)
{
   image->x = x;
   image->y = y;
   image->width = width;
   image->height = height;
   image->source = source;
  
   float vertices[16] = { x, y, 0, 0, x, y + height, 0, 1, x + width, y + width, 1, 1, x + width, y, 1, 0};
   unsigned int indices[6] = { 0, 1, 2, 2, 3, 0};
   for (int i = 0; i < 16; i++)
   {
      image->vertices[i] = vertices[i];
   }
   for (int i = 0; i < 6; i++)
   {
      image->indices[i] = indices[i];
   }
}

void image_render(image *image, vertexArray va, vertexBuffer vb, indexBuffer ib, shader shader, texture tex, vertexBufferLayout layout)
{
   vertexArray_create(&va);
   vertexBuffer_create(sizeof(image->vertices), image->vertices, &vb);
   vertexBufferLayout_add(&layout, GL_FLOAT, 2, false);
   vertexBufferLayout_add(&layout, GL_FLOAT, 2, false);
   vertexArray_addBuffer(vb, &layout);
   indexBuffer_create(6, image->indices, &ib);
   shader_create("/home/joer/Projects/OpenGL/src/shaders/default.vert", "/home/joer/Projects/OpenGL/src/shaders/default.frag", &shader);
   shader_bind(shader);
   texture_create(image->source, &tex);
   texture_bind(0, tex);

   mat4 projection;
   glm_ortho(0.0f, 1599.0f, 0.0f, 900.0f, -1.0, 1.0, projection);
   shader_setUniformMat4f("u_MVP", &projection, shader);
   shader_setUniform1i("u_Texture", 1, shader);

   glDrawElements(GL_TRIANGLES, ib.count, GL_UNSIGNED_INT, NULL);

}

void image_delete(image *image);
