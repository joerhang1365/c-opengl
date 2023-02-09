cmake_minimum_required(VERSION 3.10)
set(CMAKE_C_STANDARD 17)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(GLFW_BUILD_DOCS OFF CACHE BOOL "GLFW lib only")
set(GLFW_INSTALL OFF CACHE BOOL "GLFW lib only")

# Project name
project(Opengl)

find_package(glfw3 3.3 REQUIRED)

# Add include files
include_directories(${CMAKE_SOURCE_DIR}/include ${CMAKE_SOURCE_DIR}/include/cglm)

# Add header files
file(GLOB_RECURSE HEADER_FILES ${CMAKE_SOURCE_DIR}/src/*.h)

# Add source files
file(GLOB_RECURSE SOURCE_FILES ${CMAKE_SOURCE_DIR}/src/*.c)

add_executable(${PROJECT_NAME} ${HEADER_FILES} ${SOURCE_FILES})

# linkers
target_link_libraries(${PROJECT_NAME} glfw ${stb_image_LIBRARIES})
