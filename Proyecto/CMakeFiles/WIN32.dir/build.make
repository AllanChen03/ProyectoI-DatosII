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
include CMakeFiles/WIN32.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/WIN32.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/WIN32.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/WIN32.dir/flags.make

CMakeFiles/WIN32.dir/imageprocessing.cpp.o: CMakeFiles/WIN32.dir/flags.make
CMakeFiles/WIN32.dir/imageprocessing.cpp.o: imageprocessing.cpp
CMakeFiles/WIN32.dir/imageprocessing.cpp.o: CMakeFiles/WIN32.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/allan/Proyecto/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/WIN32.dir/imageprocessing.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/WIN32.dir/imageprocessing.cpp.o -MF CMakeFiles/WIN32.dir/imageprocessing.cpp.o.d -o CMakeFiles/WIN32.dir/imageprocessing.cpp.o -c /home/allan/Proyecto/imageprocessing.cpp

CMakeFiles/WIN32.dir/imageprocessing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WIN32.dir/imageprocessing.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/allan/Proyecto/imageprocessing.cpp > CMakeFiles/WIN32.dir/imageprocessing.cpp.i

CMakeFiles/WIN32.dir/imageprocessing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WIN32.dir/imageprocessing.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/allan/Proyecto/imageprocessing.cpp -o CMakeFiles/WIN32.dir/imageprocessing.cpp.s

CMakeFiles/WIN32.dir/servermain.cpp.o: CMakeFiles/WIN32.dir/flags.make
CMakeFiles/WIN32.dir/servermain.cpp.o: servermain.cpp
CMakeFiles/WIN32.dir/servermain.cpp.o: CMakeFiles/WIN32.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/allan/Proyecto/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/WIN32.dir/servermain.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/WIN32.dir/servermain.cpp.o -MF CMakeFiles/WIN32.dir/servermain.cpp.o.d -o CMakeFiles/WIN32.dir/servermain.cpp.o -c /home/allan/Proyecto/servermain.cpp

CMakeFiles/WIN32.dir/servermain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WIN32.dir/servermain.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/allan/Proyecto/servermain.cpp > CMakeFiles/WIN32.dir/servermain.cpp.i

CMakeFiles/WIN32.dir/servermain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WIN32.dir/servermain.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/allan/Proyecto/servermain.cpp -o CMakeFiles/WIN32.dir/servermain.cpp.s

# Object files for target WIN32
WIN32_OBJECTS = \
"CMakeFiles/WIN32.dir/imageprocessing.cpp.o" \
"CMakeFiles/WIN32.dir/servermain.cpp.o"

# External object files for target WIN32
WIN32_EXTERNAL_OBJECTS =

WIN32: CMakeFiles/WIN32.dir/imageprocessing.cpp.o
WIN32: CMakeFiles/WIN32.dir/servermain.cpp.o
WIN32: CMakeFiles/WIN32.dir/build.make
WIN32: CMakeFiles/WIN32.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/allan/Proyecto/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable WIN32"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/WIN32.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/WIN32.dir/build: WIN32
.PHONY : CMakeFiles/WIN32.dir/build

CMakeFiles/WIN32.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/WIN32.dir/cmake_clean.cmake
.PHONY : CMakeFiles/WIN32.dir/clean

CMakeFiles/WIN32.dir/depend:
	cd /home/allan/Proyecto && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/allan/Proyecto /home/allan/Proyecto /home/allan/Proyecto /home/allan/Proyecto /home/allan/Proyecto/CMakeFiles/WIN32.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/WIN32.dir/depend
