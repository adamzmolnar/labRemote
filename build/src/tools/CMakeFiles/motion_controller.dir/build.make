# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/amolnar/labRemoteMyClone

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/amolnar/labRemoteMyClone/build

# Include any dependencies generated for this target.
include src/tools/CMakeFiles/motion_controller.dir/depend.make

# Include the progress variables for this target.
include src/tools/CMakeFiles/motion_controller.dir/progress.make

# Include the compile flags for this target's objects.
include src/tools/CMakeFiles/motion_controller.dir/flags.make

src/tools/CMakeFiles/motion_controller.dir/motion_controller.cpp.o: src/tools/CMakeFiles/motion_controller.dir/flags.make
src/tools/CMakeFiles/motion_controller.dir/motion_controller.cpp.o: ../src/tools/motion_controller.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/amolnar/labRemoteMyClone/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/tools/CMakeFiles/motion_controller.dir/motion_controller.cpp.o"
	cd /home/amolnar/labRemoteMyClone/build/src/tools && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/motion_controller.dir/motion_controller.cpp.o -c /home/amolnar/labRemoteMyClone/src/tools/motion_controller.cpp

src/tools/CMakeFiles/motion_controller.dir/motion_controller.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/motion_controller.dir/motion_controller.cpp.i"
	cd /home/amolnar/labRemoteMyClone/build/src/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/amolnar/labRemoteMyClone/src/tools/motion_controller.cpp > CMakeFiles/motion_controller.dir/motion_controller.cpp.i

src/tools/CMakeFiles/motion_controller.dir/motion_controller.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/motion_controller.dir/motion_controller.cpp.s"
	cd /home/amolnar/labRemoteMyClone/build/src/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/amolnar/labRemoteMyClone/src/tools/motion_controller.cpp -o CMakeFiles/motion_controller.dir/motion_controller.cpp.s

src/tools/CMakeFiles/motion_controller.dir/motion_controller.cpp.o.requires:
.PHONY : src/tools/CMakeFiles/motion_controller.dir/motion_controller.cpp.o.requires

src/tools/CMakeFiles/motion_controller.dir/motion_controller.cpp.o.provides: src/tools/CMakeFiles/motion_controller.dir/motion_controller.cpp.o.requires
	$(MAKE) -f src/tools/CMakeFiles/motion_controller.dir/build.make src/tools/CMakeFiles/motion_controller.dir/motion_controller.cpp.o.provides.build
.PHONY : src/tools/CMakeFiles/motion_controller.dir/motion_controller.cpp.o.provides

src/tools/CMakeFiles/motion_controller.dir/motion_controller.cpp.o.provides.build: src/tools/CMakeFiles/motion_controller.dir/motion_controller.cpp.o

# Object files for target motion_controller
motion_controller_OBJECTS = \
"CMakeFiles/motion_controller.dir/motion_controller.cpp.o"

# External object files for target motion_controller
motion_controller_EXTERNAL_OBJECTS =

bin/motion_controller: src/tools/CMakeFiles/motion_controller.dir/motion_controller.cpp.o
bin/motion_controller: src/tools/CMakeFiles/motion_controller.dir/build.make
bin/motion_controller: src/tools/CMakeFiles/motion_controller.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/motion_controller"
	cd /home/amolnar/labRemoteMyClone/build/src/tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/motion_controller.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/tools/CMakeFiles/motion_controller.dir/build: bin/motion_controller
.PHONY : src/tools/CMakeFiles/motion_controller.dir/build

src/tools/CMakeFiles/motion_controller.dir/requires: src/tools/CMakeFiles/motion_controller.dir/motion_controller.cpp.o.requires
.PHONY : src/tools/CMakeFiles/motion_controller.dir/requires

src/tools/CMakeFiles/motion_controller.dir/clean:
	cd /home/amolnar/labRemoteMyClone/build/src/tools && $(CMAKE_COMMAND) -P CMakeFiles/motion_controller.dir/cmake_clean.cmake
.PHONY : src/tools/CMakeFiles/motion_controller.dir/clean

src/tools/CMakeFiles/motion_controller.dir/depend:
	cd /home/amolnar/labRemoteMyClone/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/amolnar/labRemoteMyClone /home/amolnar/labRemoteMyClone/src/tools /home/amolnar/labRemoteMyClone/build /home/amolnar/labRemoteMyClone/build/src/tools /home/amolnar/labRemoteMyClone/build/src/tools/CMakeFiles/motion_controller.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/tools/CMakeFiles/motion_controller.dir/depend

