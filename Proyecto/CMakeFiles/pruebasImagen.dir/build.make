# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/allan/Proyecto

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/allan/Proyecto

# Include any dependencies generated for this target.
include CMakeFiles/pruebasImagen.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/pruebasImagen.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/pruebasImagen.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pruebasImagen.dir/flags.make

CMakeFiles/pruebasImagen.dir/pruebasImagen.cpp.o: CMakeFiles/pruebasImagen.dir/flags.make
CMakeFiles/pruebasImagen.dir/pruebasImagen.cpp.o: pruebasImagen.cpp
CMakeFiles/pruebasImagen.dir/pruebasImagen.cpp.o: CMakeFiles/pruebasImagen.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/allan/Proyecto/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/pruebasImagen.dir/pruebasImagen.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/pruebasImagen.dir/pruebasImagen.cpp.o -MF CMakeFiles/pruebasImagen.dir/pruebasImagen.cpp.o.d -o CMakeFiles/pruebasImagen.dir/pruebasImagen.cpp.o -c /home/allan/Proyecto/pruebasImagen.cpp

CMakeFiles/pruebasImagen.dir/pruebasImagen.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pruebasImagen.dir/pruebasImagen.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/allan/Proyecto/pruebasImagen.cpp > CMakeFiles/pruebasImagen.dir/pruebasImagen.cpp.i

CMakeFiles/pruebasImagen.dir/pruebasImagen.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pruebasImagen.dir/pruebasImagen.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/allan/Proyecto/pruebasImagen.cpp -o CMakeFiles/pruebasImagen.dir/pruebasImagen.cpp.s

# Object files for target pruebasImagen
pruebasImagen_OBJECTS = \
"CMakeFiles/pruebasImagen.dir/pruebasImagen.cpp.o"

# External object files for target pruebasImagen
pruebasImagen_EXTERNAL_OBJECTS =

pruebasImagen: CMakeFiles/pruebasImagen.dir/pruebasImagen.cpp.o
pruebasImagen: CMakeFiles/pruebasImagen.dir/build.make
pruebasImagen: /usr/local/lib/libopencv_gapi.so.4.6.0
pruebasImagen: /usr/local/lib/libopencv_highgui.so.4.6.0
pruebasImagen: /usr/local/lib/libopencv_ml.so.4.6.0
pruebasImagen: /usr/local/lib/libopencv_objdetect.so.4.6.0
pruebasImagen: /usr/local/lib/libopencv_photo.so.4.6.0
pruebasImagen: /usr/local/lib/libopencv_stitching.so.4.6.0
pruebasImagen: /usr/local/lib/libopencv_video.so.4.6.0
pruebasImagen: /usr/local/lib/libopencv_videoio.so.4.6.0
pruebasImagen: /usr/local/lib/libopencv_imgcodecs.so.4.6.0
pruebasImagen: /usr/local/lib/libopencv_dnn.so.4.6.0
pruebasImagen: /usr/local/lib/libopencv_calib3d.so.4.6.0
pruebasImagen: /usr/local/lib/libopencv_features2d.so.4.6.0
pruebasImagen: /usr/local/lib/libopencv_flann.so.4.6.0
pruebasImagen: /usr/local/lib/libopencv_imgproc.so.4.6.0
pruebasImagen: /usr/local/lib/libopencv_core.so.4.6.0
pruebasImagen: CMakeFiles/pruebasImagen.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/allan/Proyecto/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable pruebasImagen"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pruebasImagen.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pruebasImagen.dir/build: pruebasImagen
.PHONY : CMakeFiles/pruebasImagen.dir/build

CMakeFiles/pruebasImagen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pruebasImagen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pruebasImagen.dir/clean

CMakeFiles/pruebasImagen.dir/depend:
	cd /home/allan/Proyecto && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/allan/Proyecto /home/allan/Proyecto /home/allan/Proyecto /home/allan/Proyecto /home/allan/Proyecto/CMakeFiles/pruebasImagen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pruebasImagen.dir/depend

