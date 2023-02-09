#ifndef WINDOW_H
#define WINDOW_H

#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <stdio.h>
#include <stdbool.h>


typedef GLFWwindow* window;

void window_initializeGLFW();
window window_create(unsigned int width, unsigned int height, char *title);
void window_framebuffer_size_callback(GLFWwindow* window, int width, int height);
void window_processInput(GLFWwindow *window);

#endif
