# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/leo/cg_assignment1/part2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/leo/cg_assignment1/part2/build

# Include any dependencies generated for this target.
include CMakeFiles/part2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/part2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/part2.dir/flags.make

CMakeFiles/part2.dir/src/part2.cpp.o: CMakeFiles/part2.dir/flags.make
CMakeFiles/part2.dir/src/part2.cpp.o: ../src/part2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/leo/cg_assignment1/part2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/part2.dir/src/part2.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/part2.dir/src/part2.cpp.o -c /home/leo/cg_assignment1/part2/src/part2.cpp

CMakeFiles/part2.dir/src/part2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/part2.dir/src/part2.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/leo/cg_assignment1/part2/src/part2.cpp > CMakeFiles/part2.dir/src/part2.cpp.i

CMakeFiles/part2.dir/src/part2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/part2.dir/src/part2.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/leo/cg_assignment1/part2/src/part2.cpp -o CMakeFiles/part2.dir/src/part2.cpp.s

CMakeFiles/part2.dir/src/part2.cpp.o.requires:

.PHONY : CMakeFiles/part2.dir/src/part2.cpp.o.requires

CMakeFiles/part2.dir/src/part2.cpp.o.provides: CMakeFiles/part2.dir/src/part2.cpp.o.requires
	$(MAKE) -f CMakeFiles/part2.dir/build.make CMakeFiles/part2.dir/src/part2.cpp.o.provides.build
.PHONY : CMakeFiles/part2.dir/src/part2.cpp.o.provides

CMakeFiles/part2.dir/src/part2.cpp.o.provides.build: CMakeFiles/part2.dir/src/part2.cpp.o


CMakeFiles/part2.dir/home/leo/cg_assignment1/external/glew/src/glew.c.o: CMakeFiles/part2.dir/flags.make
CMakeFiles/part2.dir/home/leo/cg_assignment1/external/glew/src/glew.c.o: /home/leo/cg_assignment1/external/glew/src/glew.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/leo/cg_assignment1/part2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/part2.dir/home/leo/cg_assignment1/external/glew/src/glew.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/part2.dir/home/leo/cg_assignment1/external/glew/src/glew.c.o   -c /home/leo/cg_assignment1/external/glew/src/glew.c

CMakeFiles/part2.dir/home/leo/cg_assignment1/external/glew/src/glew.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/part2.dir/home/leo/cg_assignment1/external/glew/src/glew.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/leo/cg_assignment1/external/glew/src/glew.c > CMakeFiles/part2.dir/home/leo/cg_assignment1/external/glew/src/glew.c.i

CMakeFiles/part2.dir/home/leo/cg_assignment1/external/glew/src/glew.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/part2.dir/home/leo/cg_assignment1/external/glew/src/glew.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/leo/cg_assignment1/external/glew/src/glew.c -o CMakeFiles/part2.dir/home/leo/cg_assignment1/external/glew/src/glew.c.s

CMakeFiles/part2.dir/home/leo/cg_assignment1/external/glew/src/glew.c.o.requires:

.PHONY : CMakeFiles/part2.dir/home/leo/cg_assignment1/external/glew/src/glew.c.o.requires

CMakeFiles/part2.dir/home/leo/cg_assignment1/external/glew/src/glew.c.o.provides: CMakeFiles/part2.dir/home/leo/cg_assignment1/external/glew/src/glew.c.o.requires
	$(MAKE) -f CMakeFiles/part2.dir/build.make CMakeFiles/part2.dir/home/leo/cg_assignment1/external/glew/src/glew.c.o.provides.build
.PHONY : CMakeFiles/part2.dir/home/leo/cg_assignment1/external/glew/src/glew.c.o.provides

CMakeFiles/part2.dir/home/leo/cg_assignment1/external/glew/src/glew.c.o.provides.build: CMakeFiles/part2.dir/home/leo/cg_assignment1/external/glew/src/glew.c.o


CMakeFiles/part2.dir/home/leo/cg_assignment1/external/lodepng/lodepng.cpp.o: CMakeFiles/part2.dir/flags.make
CMakeFiles/part2.dir/home/leo/cg_assignment1/external/lodepng/lodepng.cpp.o: /home/leo/cg_assignment1/external/lodepng/lodepng.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/leo/cg_assignment1/part2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/part2.dir/home/leo/cg_assignment1/external/lodepng/lodepng.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/part2.dir/home/leo/cg_assignment1/external/lodepng/lodepng.cpp.o -c /home/leo/cg_assignment1/external/lodepng/lodepng.cpp

CMakeFiles/part2.dir/home/leo/cg_assignment1/external/lodepng/lodepng.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/part2.dir/home/leo/cg_assignment1/external/lodepng/lodepng.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/leo/cg_assignment1/external/lodepng/lodepng.cpp > CMakeFiles/part2.dir/home/leo/cg_assignment1/external/lodepng/lodepng.cpp.i

CMakeFiles/part2.dir/home/leo/cg_assignment1/external/lodepng/lodepng.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/part2.dir/home/leo/cg_assignment1/external/lodepng/lodepng.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/leo/cg_assignment1/external/lodepng/lodepng.cpp -o CMakeFiles/part2.dir/home/leo/cg_assignment1/external/lodepng/lodepng.cpp.s

CMakeFiles/part2.dir/home/leo/cg_assignment1/external/lodepng/lodepng.cpp.o.requires:

.PHONY : CMakeFiles/part2.dir/home/leo/cg_assignment1/external/lodepng/lodepng.cpp.o.requires

CMakeFiles/part2.dir/home/leo/cg_assignment1/external/lodepng/lodepng.cpp.o.provides: CMakeFiles/part2.dir/home/leo/cg_assignment1/external/lodepng/lodepng.cpp.o.requires
	$(MAKE) -f CMakeFiles/part2.dir/build.make CMakeFiles/part2.dir/home/leo/cg_assignment1/external/lodepng/lodepng.cpp.o.provides.build
.PHONY : CMakeFiles/part2.dir/home/leo/cg_assignment1/external/lodepng/lodepng.cpp.o.provides

CMakeFiles/part2.dir/home/leo/cg_assignment1/external/lodepng/lodepng.cpp.o.provides.build: CMakeFiles/part2.dir/home/leo/cg_assignment1/external/lodepng/lodepng.cpp.o


CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui.cpp.o: CMakeFiles/part2.dir/flags.make
CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui.cpp.o: /home/leo/cg_assignment1/external/imgui/imgui.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/leo/cg_assignment1/part2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui.cpp.o -c /home/leo/cg_assignment1/external/imgui/imgui.cpp

CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/leo/cg_assignment1/external/imgui/imgui.cpp > CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui.cpp.i

CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/leo/cg_assignment1/external/imgui/imgui.cpp -o CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui.cpp.s

CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui.cpp.o.requires:

.PHONY : CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui.cpp.o.requires

CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui.cpp.o.provides: CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui.cpp.o.requires
	$(MAKE) -f CMakeFiles/part2.dir/build.make CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui.cpp.o.provides.build
.PHONY : CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui.cpp.o.provides

CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui.cpp.o.provides.build: CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui.cpp.o


CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_demo.cpp.o: CMakeFiles/part2.dir/flags.make
CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_demo.cpp.o: /home/leo/cg_assignment1/external/imgui/imgui_demo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/leo/cg_assignment1/part2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_demo.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_demo.cpp.o -c /home/leo/cg_assignment1/external/imgui/imgui_demo.cpp

CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_demo.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/leo/cg_assignment1/external/imgui/imgui_demo.cpp > CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_demo.cpp.i

CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_demo.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/leo/cg_assignment1/external/imgui/imgui_demo.cpp -o CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_demo.cpp.s

CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_demo.cpp.o.requires:

.PHONY : CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_demo.cpp.o.requires

CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_demo.cpp.o.provides: CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_demo.cpp.o.requires
	$(MAKE) -f CMakeFiles/part2.dir/build.make CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_demo.cpp.o.provides.build
.PHONY : CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_demo.cpp.o.provides

CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_demo.cpp.o.provides.build: CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_demo.cpp.o


CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_draw.cpp.o: CMakeFiles/part2.dir/flags.make
CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_draw.cpp.o: /home/leo/cg_assignment1/external/imgui/imgui_draw.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/leo/cg_assignment1/part2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_draw.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_draw.cpp.o -c /home/leo/cg_assignment1/external/imgui/imgui_draw.cpp

CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_draw.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/leo/cg_assignment1/external/imgui/imgui_draw.cpp > CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_draw.cpp.i

CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_draw.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/leo/cg_assignment1/external/imgui/imgui_draw.cpp -o CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_draw.cpp.s

CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_draw.cpp.o.requires:

.PHONY : CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_draw.cpp.o.requires

CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_draw.cpp.o.provides: CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_draw.cpp.o.requires
	$(MAKE) -f CMakeFiles/part2.dir/build.make CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_draw.cpp.o.provides.build
.PHONY : CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_draw.cpp.o.provides

CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_draw.cpp.o.provides.build: CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_draw.cpp.o


CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_impl_glfw_gl3.cpp.o: CMakeFiles/part2.dir/flags.make
CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_impl_glfw_gl3.cpp.o: /home/leo/cg_assignment1/external/imgui/imgui_impl_glfw_gl3.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/leo/cg_assignment1/part2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_impl_glfw_gl3.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_impl_glfw_gl3.cpp.o -c /home/leo/cg_assignment1/external/imgui/imgui_impl_glfw_gl3.cpp

CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_impl_glfw_gl3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_impl_glfw_gl3.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/leo/cg_assignment1/external/imgui/imgui_impl_glfw_gl3.cpp > CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_impl_glfw_gl3.cpp.i

CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_impl_glfw_gl3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_impl_glfw_gl3.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/leo/cg_assignment1/external/imgui/imgui_impl_glfw_gl3.cpp -o CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_impl_glfw_gl3.cpp.s

CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_impl_glfw_gl3.cpp.o.requires:

.PHONY : CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_impl_glfw_gl3.cpp.o.requires

CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_impl_glfw_gl3.cpp.o.provides: CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_impl_glfw_gl3.cpp.o.requires
	$(MAKE) -f CMakeFiles/part2.dir/build.make CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_impl_glfw_gl3.cpp.o.provides.build
.PHONY : CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_impl_glfw_gl3.cpp.o.provides

CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_impl_glfw_gl3.cpp.o.provides.build: CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_impl_glfw_gl3.cpp.o


# Object files for target part2
part2_OBJECTS = \
"CMakeFiles/part2.dir/src/part2.cpp.o" \
"CMakeFiles/part2.dir/home/leo/cg_assignment1/external/glew/src/glew.c.o" \
"CMakeFiles/part2.dir/home/leo/cg_assignment1/external/lodepng/lodepng.cpp.o" \
"CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui.cpp.o" \
"CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_demo.cpp.o" \
"CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_draw.cpp.o" \
"CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_impl_glfw_gl3.cpp.o"

# External object files for target part2
part2_EXTERNAL_OBJECTS =

part2: CMakeFiles/part2.dir/src/part2.cpp.o
part2: CMakeFiles/part2.dir/home/leo/cg_assignment1/external/glew/src/glew.c.o
part2: CMakeFiles/part2.dir/home/leo/cg_assignment1/external/lodepng/lodepng.cpp.o
part2: CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui.cpp.o
part2: CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_demo.cpp.o
part2: CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_draw.cpp.o
part2: CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_impl_glfw_gl3.cpp.o
part2: CMakeFiles/part2.dir/build.make
part2: glfw/src/libglfw3.a
part2: /usr/lib/x86_64-linux-gnu/libGL.so
part2: /usr/lib/x86_64-linux-gnu/libX11.so
part2: /usr/lib/x86_64-linux-gnu/libXrandr.so
part2: /usr/lib/x86_64-linux-gnu/libXinerama.so
part2: /usr/lib/x86_64-linux-gnu/libXi.so
part2: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
part2: /usr/lib/x86_64-linux-gnu/librt.so
part2: /usr/lib/x86_64-linux-gnu/libm.so
part2: /usr/lib/x86_64-linux-gnu/libXcursor.so
part2: /usr/lib/x86_64-linux-gnu/libGL.so
part2: /usr/lib/x86_64-linux-gnu/libX11.so
part2: /usr/lib/x86_64-linux-gnu/libXrandr.so
part2: /usr/lib/x86_64-linux-gnu/libXinerama.so
part2: /usr/lib/x86_64-linux-gnu/libXi.so
part2: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
part2: /usr/lib/x86_64-linux-gnu/librt.so
part2: /usr/lib/x86_64-linux-gnu/libm.so
part2: /usr/lib/x86_64-linux-gnu/libXcursor.so
part2: CMakeFiles/part2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/leo/cg_assignment1/part2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable part2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/part2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/part2.dir/build: part2

.PHONY : CMakeFiles/part2.dir/build

CMakeFiles/part2.dir/requires: CMakeFiles/part2.dir/src/part2.cpp.o.requires
CMakeFiles/part2.dir/requires: CMakeFiles/part2.dir/home/leo/cg_assignment1/external/glew/src/glew.c.o.requires
CMakeFiles/part2.dir/requires: CMakeFiles/part2.dir/home/leo/cg_assignment1/external/lodepng/lodepng.cpp.o.requires
CMakeFiles/part2.dir/requires: CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui.cpp.o.requires
CMakeFiles/part2.dir/requires: CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_demo.cpp.o.requires
CMakeFiles/part2.dir/requires: CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_draw.cpp.o.requires
CMakeFiles/part2.dir/requires: CMakeFiles/part2.dir/home/leo/cg_assignment1/external/imgui/imgui_impl_glfw_gl3.cpp.o.requires

.PHONY : CMakeFiles/part2.dir/requires

CMakeFiles/part2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/part2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/part2.dir/clean

CMakeFiles/part2.dir/depend:
	cd /home/leo/cg_assignment1/part2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/leo/cg_assignment1/part2 /home/leo/cg_assignment1/part2 /home/leo/cg_assignment1/part2/build /home/leo/cg_assignment1/part2/build /home/leo/cg_assignment1/part2/build/CMakeFiles/part2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/part2.dir/depend

