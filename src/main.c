#include <cglm/cglm.h>
#include "window.h"
#include "render2D.h"

locus tangentLine(int width, float frequency, float amplitude)
{
   locus points;
   locus_create(0, 0, 1, &points);
   for (double x = 0; x < width; x += 0.01)
   {
      float y = tan(x * frequency) * amplitude + 450;
      locus_addPoint(x, y, &points);
   }
   return points;
}

int main()
{
    const int SCREEN_WIDTH = 1600;
    const int SCREEN_HEIGHT = 900;

    window_initializeGLFW();
    window myWindow = window_create(SCREEN_WIDTH, SCREEN_HEIGHT, "I DONE IT");

    // Colors
    color white;
    color black;

    color_create(1.0f, 1.0f, 1.0f, 1.0f, &white);
    color_create(0.0f, 0.0f, 0.0f, 1.0f, &black);

    locus myTangent = tangentLine(SCREEN_WIDTH, 0.01, 25);

    ellipse myCircle;
    ellipse_create(800, 450, 400, 400, 2 * M_PI, &myCircle);

    image myImage;
    image_create(0, 0, 400, 400, "/home/joer/Projects/OpenGL/src/images/background.jpg", &myImage);

    while (!glfwWindowShouldClose(myWindow))
    {
        window_processInput(myWindow);

        // Render here
        render2D_clear(black);

        render2D_render(&myTangent, white, LOCUS);
        render2D_render(&myCircle, white, ELLIPSE);
        render2D_render(&myImage, white, IMAGE);
   
        glfwSwapBuffers(myWindow);
        glfwPollEvents();
    }

    return 0;
}
