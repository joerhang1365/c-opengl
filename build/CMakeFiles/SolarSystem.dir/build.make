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
CMAKE_SOURCE_DIR = /home/joer/Projects/SolarSystem

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/joer/Projects/SolarSystem/build

# Include any dependencies generated for this target.
include CMakeFiles/SolarSystem.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/SolarSystem.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/SolarSystem.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SolarSystem.dir/flags.make

CMakeFiles/SolarSystem.dir/src/glad.c.o: CMakeFiles/SolarSystem.dir/flags.make
CMakeFiles/SolarSystem.dir/src/glad.c.o: /home/joer/Projects/SolarSystem/src/glad.c
CMakeFiles/SolarSystem.dir/src/glad.c.o: CMakeFiles/SolarSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joer/Projects/SolarSystem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/SolarSystem.dir/src/glad.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/SolarSystem.dir/src/glad.c.o -MF CMakeFiles/SolarSystem.dir/src/glad.c.o.d -o CMakeFiles/SolarSystem.dir/src/glad.c.o -c /home/joer/Projects/SolarSystem/src/glad.c

CMakeFiles/SolarSystem.dir/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SolarSystem.dir/src/glad.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/joer/Projects/SolarSystem/src/glad.c > CMakeFiles/SolarSystem.dir/src/glad.c.i

CMakeFiles/SolarSystem.dir/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SolarSystem.dir/src/glad.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/joer/Projects/SolarSystem/src/glad.c -o CMakeFiles/SolarSystem.dir/src/glad.c.s

CMakeFiles/SolarSystem.dir/src/main.c.o: CMakeFiles/SolarSystem.dir/flags.make
CMakeFiles/SolarSystem.dir/src/main.c.o: /home/joer/Projects/SolarSystem/src/main.c
CMakeFiles/SolarSystem.dir/src/main.c.o: CMakeFiles/SolarSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joer/Projects/SolarSystem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/SolarSystem.dir/src/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/SolarSystem.dir/src/main.c.o -MF CMakeFiles/SolarSystem.dir/src/main.c.o.d -o CMakeFiles/SolarSystem.dir/src/main.c.o -c /home/joer/Projects/SolarSystem/src/main.c

CMakeFiles/SolarSystem.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SolarSystem.dir/src/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/joer/Projects/SolarSystem/src/main.c > CMakeFiles/SolarSystem.dir/src/main.c.i

CMakeFiles/SolarSystem.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SolarSystem.dir/src/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/joer/Projects/SolarSystem/src/main.c -o CMakeFiles/SolarSystem.dir/src/main.c.s

CMakeFiles/SolarSystem.dir/src/shader.c.o: CMakeFiles/SolarSystem.dir/flags.make
CMakeFiles/SolarSystem.dir/src/shader.c.o: /home/joer/Projects/SolarSystem/src/shader.c
CMakeFiles/SolarSystem.dir/src/shader.c.o: CMakeFiles/SolarSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joer/Projects/SolarSystem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/SolarSystem.dir/src/shader.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/SolarSystem.dir/src/shader.c.o -MF CMakeFiles/SolarSystem.dir/src/shader.c.o.d -o CMakeFiles/SolarSystem.dir/src/shader.c.o -c /home/joer/Projects/SolarSystem/src/shader.c

CMakeFiles/SolarSystem.dir/src/shader.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SolarSystem.dir/src/shader.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/joer/Projects/SolarSystem/src/shader.c > CMakeFiles/SolarSystem.dir/src/shader.c.i

CMakeFiles/SolarSystem.dir/src/shader.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SolarSystem.dir/src/shader.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/joer/Projects/SolarSystem/src/shader.c -o CMakeFiles/SolarSystem.dir/src/shader.c.s

CMakeFiles/SolarSystem.dir/src/vector3.c.o: CMakeFiles/SolarSystem.dir/flags.make
CMakeFiles/SolarSystem.dir/src/vector3.c.o: /home/joer/Projects/SolarSystem/src/vector3.c
CMakeFiles/SolarSystem.dir/src/vector3.c.o: CMakeFiles/SolarSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joer/Projects/SolarSystem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/SolarSystem.dir/src/vector3.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/SolarSystem.dir/src/vector3.c.o -MF CMakeFiles/SolarSystem.dir/src/vector3.c.o.d -o CMakeFiles/SolarSystem.dir/src/vector3.c.o -c /home/joer/Projects/SolarSystem/src/vector3.c

CMakeFiles/SolarSystem.dir/src/vector3.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SolarSystem.dir/src/vector3.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/joer/Projects/SolarSystem/src/vector3.c > CMakeFiles/SolarSystem.dir/src/vector3.c.i

CMakeFiles/SolarSystem.dir/src/vector3.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SolarSystem.dir/src/vector3.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/joer/Projects/SolarSystem/src/vector3.c -o CMakeFiles/SolarSystem.dir/src/vector3.c.s

CMakeFiles/SolarSystem.dir/src/vertexArray.c.o: CMakeFiles/SolarSystem.dir/flags.make
CMakeFiles/SolarSystem.dir/src/vertexArray.c.o: /home/joer/Projects/SolarSystem/src/vertexArray.c
CMakeFiles/SolarSystem.dir/src/vertexArray.c.o: CMakeFiles/SolarSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joer/Projects/SolarSystem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/SolarSystem.dir/src/vertexArray.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/SolarSystem.dir/src/vertexArray.c.o -MF CMakeFiles/SolarSystem.dir/src/vertexArray.c.o.d -o CMakeFiles/SolarSystem.dir/src/vertexArray.c.o -c /home/joer/Projects/SolarSystem/src/vertexArray.c

CMakeFiles/SolarSystem.dir/src/vertexArray.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SolarSystem.dir/src/vertexArray.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/joer/Projects/SolarSystem/src/vertexArray.c > CMakeFiles/SolarSystem.dir/src/vertexArray.c.i

CMakeFiles/SolarSystem.dir/src/vertexArray.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SolarSystem.dir/src/vertexArray.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/joer/Projects/SolarSystem/src/vertexArray.c -o CMakeFiles/SolarSystem.dir/src/vertexArray.c.s

CMakeFiles/SolarSystem.dir/src/vertexBuffer.c.o: CMakeFiles/SolarSystem.dir/flags.make
CMakeFiles/SolarSystem.dir/src/vertexBuffer.c.o: /home/joer/Projects/SolarSystem/src/vertexBuffer.c
CMakeFiles/SolarSystem.dir/src/vertexBuffer.c.o: CMakeFiles/SolarSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joer/Projects/SolarSystem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/SolarSystem.dir/src/vertexBuffer.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/SolarSystem.dir/src/vertexBuffer.c.o -MF CMakeFiles/SolarSystem.dir/src/vertexBuffer.c.o.d -o CMakeFiles/SolarSystem.dir/src/vertexBuffer.c.o -c /home/joer/Projects/SolarSystem/src/vertexBuffer.c

CMakeFiles/SolarSystem.dir/src/vertexBuffer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SolarSystem.dir/src/vertexBuffer.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/joer/Projects/SolarSystem/src/vertexBuffer.c > CMakeFiles/SolarSystem.dir/src/vertexBuffer.c.i

CMakeFiles/SolarSystem.dir/src/vertexBuffer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SolarSystem.dir/src/vertexBuffer.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/joer/Projects/SolarSystem/src/vertexBuffer.c -o CMakeFiles/SolarSystem.dir/src/vertexBuffer.c.s

# Object files for target SolarSystem
SolarSystem_OBJECTS = \
"CMakeFiles/SolarSystem.dir/src/glad.c.o" \
"CMakeFiles/SolarSystem.dir/src/main.c.o" \
"CMakeFiles/SolarSystem.dir/src/shader.c.o" \
"CMakeFiles/SolarSystem.dir/src/vector3.c.o" \
"CMakeFiles/SolarSystem.dir/src/vertexArray.c.o" \
"CMakeFiles/SolarSystem.dir/src/vertexBuffer.c.o"

# External object files for target SolarSystem
SolarSystem_EXTERNAL_OBJECTS =

SolarSystem: CMakeFiles/SolarSystem.dir/src/glad.c.o
SolarSystem: CMakeFiles/SolarSystem.dir/src/main.c.o
SolarSystem: CMakeFiles/SolarSystem.dir/src/shader.c.o
SolarSystem: CMakeFiles/SolarSystem.dir/src/vector3.c.o
SolarSystem: CMakeFiles/SolarSystem.dir/src/vertexArray.c.o
SolarSystem: CMakeFiles/SolarSystem.dir/src/vertexBuffer.c.o
SolarSystem: CMakeFiles/SolarSystem.dir/build.make
SolarSystem: /usr/local/lib/libglfw3.a
SolarSystem: /usr/lib/librt.a
SolarSystem: /usr/lib/libm.so
SolarSystem: /usr/lib/libX11.so
SolarSystem: CMakeFiles/SolarSystem.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/joer/Projects/SolarSystem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking C executable SolarSystem"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SolarSystem.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SolarSystem.dir/build: SolarSystem
.PHONY : CMakeFiles/SolarSystem.dir/build

CMakeFiles/SolarSystem.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SolarSystem.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SolarSystem.dir/clean

CMakeFiles/SolarSystem.dir/depend:
	cd /home/joer/Projects/SolarSystem/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/joer/Projects/SolarSystem /home/joer/Projects/SolarSystem /home/joer/Projects/SolarSystem/build /home/joer/Projects/SolarSystem/build /home/joer/Projects/SolarSystem/build/CMakeFiles/SolarSystem.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SolarSystem.dir/depend

