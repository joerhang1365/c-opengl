# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/joer/Projects/OpenGL

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/joer/Projects/OpenGL/build

# Include any dependencies generated for this target.
include CMakeFiles/Opengl.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Opengl.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Opengl.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Opengl.dir/flags.make

CMakeFiles/Opengl.dir/src/color.c.o: CMakeFiles/Opengl.dir/flags.make
CMakeFiles/Opengl.dir/src/color.c.o: /home/joer/Projects/OpenGL/src/color.c
CMakeFiles/Opengl.dir/src/color.c.o: CMakeFiles/Opengl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joer/Projects/OpenGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Opengl.dir/src/color.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Opengl.dir/src/color.c.o -MF CMakeFiles/Opengl.dir/src/color.c.o.d -o CMakeFiles/Opengl.dir/src/color.c.o -c /home/joer/Projects/OpenGL/src/color.c

CMakeFiles/Opengl.dir/src/color.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Opengl.dir/src/color.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/joer/Projects/OpenGL/src/color.c > CMakeFiles/Opengl.dir/src/color.c.i

CMakeFiles/Opengl.dir/src/color.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Opengl.dir/src/color.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/joer/Projects/OpenGL/src/color.c -o CMakeFiles/Opengl.dir/src/color.c.s

CMakeFiles/Opengl.dir/src/glad.c.o: CMakeFiles/Opengl.dir/flags.make
CMakeFiles/Opengl.dir/src/glad.c.o: /home/joer/Projects/OpenGL/src/glad.c
CMakeFiles/Opengl.dir/src/glad.c.o: CMakeFiles/Opengl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joer/Projects/OpenGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Opengl.dir/src/glad.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Opengl.dir/src/glad.c.o -MF CMakeFiles/Opengl.dir/src/glad.c.o.d -o CMakeFiles/Opengl.dir/src/glad.c.o -c /home/joer/Projects/OpenGL/src/glad.c

CMakeFiles/Opengl.dir/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Opengl.dir/src/glad.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/joer/Projects/OpenGL/src/glad.c > CMakeFiles/Opengl.dir/src/glad.c.i

CMakeFiles/Opengl.dir/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Opengl.dir/src/glad.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/joer/Projects/OpenGL/src/glad.c -o CMakeFiles/Opengl.dir/src/glad.c.s

CMakeFiles/Opengl.dir/src/indexBuffer.c.o: CMakeFiles/Opengl.dir/flags.make
CMakeFiles/Opengl.dir/src/indexBuffer.c.o: /home/joer/Projects/OpenGL/src/indexBuffer.c
CMakeFiles/Opengl.dir/src/indexBuffer.c.o: CMakeFiles/Opengl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joer/Projects/OpenGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/Opengl.dir/src/indexBuffer.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Opengl.dir/src/indexBuffer.c.o -MF CMakeFiles/Opengl.dir/src/indexBuffer.c.o.d -o CMakeFiles/Opengl.dir/src/indexBuffer.c.o -c /home/joer/Projects/OpenGL/src/indexBuffer.c

CMakeFiles/Opengl.dir/src/indexBuffer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Opengl.dir/src/indexBuffer.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/joer/Projects/OpenGL/src/indexBuffer.c > CMakeFiles/Opengl.dir/src/indexBuffer.c.i

CMakeFiles/Opengl.dir/src/indexBuffer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Opengl.dir/src/indexBuffer.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/joer/Projects/OpenGL/src/indexBuffer.c -o CMakeFiles/Opengl.dir/src/indexBuffer.c.s

CMakeFiles/Opengl.dir/src/main.c.o: CMakeFiles/Opengl.dir/flags.make
CMakeFiles/Opengl.dir/src/main.c.o: /home/joer/Projects/OpenGL/src/main.c
CMakeFiles/Opengl.dir/src/main.c.o: CMakeFiles/Opengl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joer/Projects/OpenGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/Opengl.dir/src/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Opengl.dir/src/main.c.o -MF CMakeFiles/Opengl.dir/src/main.c.o.d -o CMakeFiles/Opengl.dir/src/main.c.o -c /home/joer/Projects/OpenGL/src/main.c

CMakeFiles/Opengl.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Opengl.dir/src/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/joer/Projects/OpenGL/src/main.c > CMakeFiles/Opengl.dir/src/main.c.i

CMakeFiles/Opengl.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Opengl.dir/src/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/joer/Projects/OpenGL/src/main.c -o CMakeFiles/Opengl.dir/src/main.c.s

CMakeFiles/Opengl.dir/src/render2D.c.o: CMakeFiles/Opengl.dir/flags.make
CMakeFiles/Opengl.dir/src/render2D.c.o: /home/joer/Projects/OpenGL/src/render2D.c
CMakeFiles/Opengl.dir/src/render2D.c.o: CMakeFiles/Opengl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joer/Projects/OpenGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/Opengl.dir/src/render2D.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Opengl.dir/src/render2D.c.o -MF CMakeFiles/Opengl.dir/src/render2D.c.o.d -o CMakeFiles/Opengl.dir/src/render2D.c.o -c /home/joer/Projects/OpenGL/src/render2D.c

CMakeFiles/Opengl.dir/src/render2D.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Opengl.dir/src/render2D.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/joer/Projects/OpenGL/src/render2D.c > CMakeFiles/Opengl.dir/src/render2D.c.i

CMakeFiles/Opengl.dir/src/render2D.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Opengl.dir/src/render2D.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/joer/Projects/OpenGL/src/render2D.c -o CMakeFiles/Opengl.dir/src/render2D.c.s

CMakeFiles/Opengl.dir/src/shader.c.o: CMakeFiles/Opengl.dir/flags.make
CMakeFiles/Opengl.dir/src/shader.c.o: /home/joer/Projects/OpenGL/src/shader.c
CMakeFiles/Opengl.dir/src/shader.c.o: CMakeFiles/Opengl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joer/Projects/OpenGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/Opengl.dir/src/shader.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Opengl.dir/src/shader.c.o -MF CMakeFiles/Opengl.dir/src/shader.c.o.d -o CMakeFiles/Opengl.dir/src/shader.c.o -c /home/joer/Projects/OpenGL/src/shader.c

CMakeFiles/Opengl.dir/src/shader.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Opengl.dir/src/shader.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/joer/Projects/OpenGL/src/shader.c > CMakeFiles/Opengl.dir/src/shader.c.i

CMakeFiles/Opengl.dir/src/shader.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Opengl.dir/src/shader.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/joer/Projects/OpenGL/src/shader.c -o CMakeFiles/Opengl.dir/src/shader.c.s

CMakeFiles/Opengl.dir/src/stb_image.c.o: CMakeFiles/Opengl.dir/flags.make
CMakeFiles/Opengl.dir/src/stb_image.c.o: /home/joer/Projects/OpenGL/src/stb_image.c
CMakeFiles/Opengl.dir/src/stb_image.c.o: CMakeFiles/Opengl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joer/Projects/OpenGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/Opengl.dir/src/stb_image.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Opengl.dir/src/stb_image.c.o -MF CMakeFiles/Opengl.dir/src/stb_image.c.o.d -o CMakeFiles/Opengl.dir/src/stb_image.c.o -c /home/joer/Projects/OpenGL/src/stb_image.c

CMakeFiles/Opengl.dir/src/stb_image.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Opengl.dir/src/stb_image.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/joer/Projects/OpenGL/src/stb_image.c > CMakeFiles/Opengl.dir/src/stb_image.c.i

CMakeFiles/Opengl.dir/src/stb_image.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Opengl.dir/src/stb_image.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/joer/Projects/OpenGL/src/stb_image.c -o CMakeFiles/Opengl.dir/src/stb_image.c.s

CMakeFiles/Opengl.dir/src/texture.c.o: CMakeFiles/Opengl.dir/flags.make
CMakeFiles/Opengl.dir/src/texture.c.o: /home/joer/Projects/OpenGL/src/texture.c
CMakeFiles/Opengl.dir/src/texture.c.o: CMakeFiles/Opengl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joer/Projects/OpenGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/Opengl.dir/src/texture.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Opengl.dir/src/texture.c.o -MF CMakeFiles/Opengl.dir/src/texture.c.o.d -o CMakeFiles/Opengl.dir/src/texture.c.o -c /home/joer/Projects/OpenGL/src/texture.c

CMakeFiles/Opengl.dir/src/texture.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Opengl.dir/src/texture.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/joer/Projects/OpenGL/src/texture.c > CMakeFiles/Opengl.dir/src/texture.c.i

CMakeFiles/Opengl.dir/src/texture.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Opengl.dir/src/texture.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/joer/Projects/OpenGL/src/texture.c -o CMakeFiles/Opengl.dir/src/texture.c.s

CMakeFiles/Opengl.dir/src/vertexArray.c.o: CMakeFiles/Opengl.dir/flags.make
CMakeFiles/Opengl.dir/src/vertexArray.c.o: /home/joer/Projects/OpenGL/src/vertexArray.c
CMakeFiles/Opengl.dir/src/vertexArray.c.o: CMakeFiles/Opengl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joer/Projects/OpenGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/Opengl.dir/src/vertexArray.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Opengl.dir/src/vertexArray.c.o -MF CMakeFiles/Opengl.dir/src/vertexArray.c.o.d -o CMakeFiles/Opengl.dir/src/vertexArray.c.o -c /home/joer/Projects/OpenGL/src/vertexArray.c

CMakeFiles/Opengl.dir/src/vertexArray.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Opengl.dir/src/vertexArray.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/joer/Projects/OpenGL/src/vertexArray.c > CMakeFiles/Opengl.dir/src/vertexArray.c.i

CMakeFiles/Opengl.dir/src/vertexArray.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Opengl.dir/src/vertexArray.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/joer/Projects/OpenGL/src/vertexArray.c -o CMakeFiles/Opengl.dir/src/vertexArray.c.s

CMakeFiles/Opengl.dir/src/vertexBuffer.c.o: CMakeFiles/Opengl.dir/flags.make
CMakeFiles/Opengl.dir/src/vertexBuffer.c.o: /home/joer/Projects/OpenGL/src/vertexBuffer.c
CMakeFiles/Opengl.dir/src/vertexBuffer.c.o: CMakeFiles/Opengl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joer/Projects/OpenGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/Opengl.dir/src/vertexBuffer.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Opengl.dir/src/vertexBuffer.c.o -MF CMakeFiles/Opengl.dir/src/vertexBuffer.c.o.d -o CMakeFiles/Opengl.dir/src/vertexBuffer.c.o -c /home/joer/Projects/OpenGL/src/vertexBuffer.c

CMakeFiles/Opengl.dir/src/vertexBuffer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Opengl.dir/src/vertexBuffer.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/joer/Projects/OpenGL/src/vertexBuffer.c > CMakeFiles/Opengl.dir/src/vertexBuffer.c.i

CMakeFiles/Opengl.dir/src/vertexBuffer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Opengl.dir/src/vertexBuffer.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/joer/Projects/OpenGL/src/vertexBuffer.c -o CMakeFiles/Opengl.dir/src/vertexBuffer.c.s

CMakeFiles/Opengl.dir/src/vertexBufferLayout.c.o: CMakeFiles/Opengl.dir/flags.make
CMakeFiles/Opengl.dir/src/vertexBufferLayout.c.o: /home/joer/Projects/OpenGL/src/vertexBufferLayout.c
CMakeFiles/Opengl.dir/src/vertexBufferLayout.c.o: CMakeFiles/Opengl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joer/Projects/OpenGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/Opengl.dir/src/vertexBufferLayout.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Opengl.dir/src/vertexBufferLayout.c.o -MF CMakeFiles/Opengl.dir/src/vertexBufferLayout.c.o.d -o CMakeFiles/Opengl.dir/src/vertexBufferLayout.c.o -c /home/joer/Projects/OpenGL/src/vertexBufferLayout.c

CMakeFiles/Opengl.dir/src/vertexBufferLayout.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Opengl.dir/src/vertexBufferLayout.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/joer/Projects/OpenGL/src/vertexBufferLayout.c > CMakeFiles/Opengl.dir/src/vertexBufferLayout.c.i

CMakeFiles/Opengl.dir/src/vertexBufferLayout.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Opengl.dir/src/vertexBufferLayout.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/joer/Projects/OpenGL/src/vertexBufferLayout.c -o CMakeFiles/Opengl.dir/src/vertexBufferLayout.c.s

CMakeFiles/Opengl.dir/src/window.c.o: CMakeFiles/Opengl.dir/flags.make
CMakeFiles/Opengl.dir/src/window.c.o: /home/joer/Projects/OpenGL/src/window.c
CMakeFiles/Opengl.dir/src/window.c.o: CMakeFiles/Opengl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joer/Projects/OpenGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object CMakeFiles/Opengl.dir/src/window.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Opengl.dir/src/window.c.o -MF CMakeFiles/Opengl.dir/src/window.c.o.d -o CMakeFiles/Opengl.dir/src/window.c.o -c /home/joer/Projects/OpenGL/src/window.c

CMakeFiles/Opengl.dir/src/window.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Opengl.dir/src/window.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/joer/Projects/OpenGL/src/window.c > CMakeFiles/Opengl.dir/src/window.c.i

CMakeFiles/Opengl.dir/src/window.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Opengl.dir/src/window.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/joer/Projects/OpenGL/src/window.c -o CMakeFiles/Opengl.dir/src/window.c.s

# Object files for target Opengl
Opengl_OBJECTS = \
"CMakeFiles/Opengl.dir/src/color.c.o" \
"CMakeFiles/Opengl.dir/src/glad.c.o" \
"CMakeFiles/Opengl.dir/src/indexBuffer.c.o" \
"CMakeFiles/Opengl.dir/src/main.c.o" \
"CMakeFiles/Opengl.dir/src/render2D.c.o" \
"CMakeFiles/Opengl.dir/src/shader.c.o" \
"CMakeFiles/Opengl.dir/src/stb_image.c.o" \
"CMakeFiles/Opengl.dir/src/texture.c.o" \
"CMakeFiles/Opengl.dir/src/vertexArray.c.o" \
"CMakeFiles/Opengl.dir/src/vertexBuffer.c.o" \
"CMakeFiles/Opengl.dir/src/vertexBufferLayout.c.o" \
"CMakeFiles/Opengl.dir/src/window.c.o"

# External object files for target Opengl
Opengl_EXTERNAL_OBJECTS =

Opengl: CMakeFiles/Opengl.dir/src/color.c.o
Opengl: CMakeFiles/Opengl.dir/src/glad.c.o
Opengl: CMakeFiles/Opengl.dir/src/indexBuffer.c.o
Opengl: CMakeFiles/Opengl.dir/src/main.c.o
Opengl: CMakeFiles/Opengl.dir/src/render2D.c.o
Opengl: CMakeFiles/Opengl.dir/src/shader.c.o
Opengl: CMakeFiles/Opengl.dir/src/stb_image.c.o
Opengl: CMakeFiles/Opengl.dir/src/texture.c.o
Opengl: CMakeFiles/Opengl.dir/src/vertexArray.c.o
Opengl: CMakeFiles/Opengl.dir/src/vertexBuffer.c.o
Opengl: CMakeFiles/Opengl.dir/src/vertexBufferLayout.c.o
Opengl: CMakeFiles/Opengl.dir/src/window.c.o
Opengl: CMakeFiles/Opengl.dir/build.make
Opengl: /usr/local/lib/libglfw3.a
Opengl: /usr/lib/librt.a
Opengl: /usr/lib/libm.so
Opengl: /usr/lib/libX11.so
Opengl: CMakeFiles/Opengl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/joer/Projects/OpenGL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking C executable Opengl"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Opengl.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Opengl.dir/build: Opengl
.PHONY : CMakeFiles/Opengl.dir/build

CMakeFiles/Opengl.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Opengl.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Opengl.dir/clean

CMakeFiles/Opengl.dir/depend:
	cd /home/joer/Projects/OpenGL/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/joer/Projects/OpenGL /home/joer/Projects/OpenGL /home/joer/Projects/OpenGL/build /home/joer/Projects/OpenGL/build /home/joer/Projects/OpenGL/build/CMakeFiles/Opengl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Opengl.dir/depend
