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
include src/libZaber/CMakeFiles/Zaber.dir/depend.make

# Include the progress variables for this target.
include src/libZaber/CMakeFiles/Zaber.dir/progress.make

# Include the compile flags for this target's objects.
include src/libZaber/CMakeFiles/Zaber.dir/flags.make

src/libZaber/CMakeFiles/Zaber.dir/za_serial.cpp.o: src/libZaber/CMakeFiles/Zaber.dir/flags.make
src/libZaber/CMakeFiles/Zaber.dir/za_serial.cpp.o: ../src/libZaber/za_serial.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/amolnar/labRemoteMyClone/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/libZaber/CMakeFiles/Zaber.dir/za_serial.cpp.o"
	cd /home/amolnar/labRemoteMyClone/build/src/libZaber && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Zaber.dir/za_serial.cpp.o -c /home/amolnar/labRemoteMyClone/src/libZaber/za_serial.cpp

src/libZaber/CMakeFiles/Zaber.dir/za_serial.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Zaber.dir/za_serial.cpp.i"
	cd /home/amolnar/labRemoteMyClone/build/src/libZaber && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/amolnar/labRemoteMyClone/src/libZaber/za_serial.cpp > CMakeFiles/Zaber.dir/za_serial.cpp.i

src/libZaber/CMakeFiles/Zaber.dir/za_serial.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Zaber.dir/za_serial.cpp.s"
	cd /home/amolnar/labRemoteMyClone/build/src/libZaber && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/amolnar/labRemoteMyClone/src/libZaber/za_serial.cpp -o CMakeFiles/Zaber.dir/za_serial.cpp.s

src/libZaber/CMakeFiles/Zaber.dir/za_serial.cpp.o.requires:
.PHONY : src/libZaber/CMakeFiles/Zaber.dir/za_serial.cpp.o.requires

src/libZaber/CMakeFiles/Zaber.dir/za_serial.cpp.o.provides: src/libZaber/CMakeFiles/Zaber.dir/za_serial.cpp.o.requires
	$(MAKE) -f src/libZaber/CMakeFiles/Zaber.dir/build.make src/libZaber/CMakeFiles/Zaber.dir/za_serial.cpp.o.provides.build
.PHONY : src/libZaber/CMakeFiles/Zaber.dir/za_serial.cpp.o.provides

src/libZaber/CMakeFiles/Zaber.dir/za_serial.cpp.o.provides.build: src/libZaber/CMakeFiles/Zaber.dir/za_serial.cpp.o

# Object files for target Zaber
Zaber_OBJECTS = \
"CMakeFiles/Zaber.dir/za_serial.cpp.o"

# External object files for target Zaber
Zaber_EXTERNAL_OBJECTS =

lib/libZaber.so: src/libZaber/CMakeFiles/Zaber.dir/za_serial.cpp.o
lib/libZaber.so: src/libZaber/CMakeFiles/Zaber.dir/build.make
lib/libZaber.so: src/libZaber/CMakeFiles/Zaber.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library ../../lib/libZaber.so"
	cd /home/amolnar/labRemoteMyClone/build/src/libZaber && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Zaber.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/libZaber/CMakeFiles/Zaber.dir/build: lib/libZaber.so
.PHONY : src/libZaber/CMakeFiles/Zaber.dir/build

src/libZaber/CMakeFiles/Zaber.dir/requires: src/libZaber/CMakeFiles/Zaber.dir/za_serial.cpp.o.requires
.PHONY : src/libZaber/CMakeFiles/Zaber.dir/requires

src/libZaber/CMakeFiles/Zaber.dir/clean:
	cd /home/amolnar/labRemoteMyClone/build/src/libZaber && $(CMAKE_COMMAND) -P CMakeFiles/Zaber.dir/cmake_clean.cmake
.PHONY : src/libZaber/CMakeFiles/Zaber.dir/clean

src/libZaber/CMakeFiles/Zaber.dir/depend:
	cd /home/amolnar/labRemoteMyClone/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/amolnar/labRemoteMyClone /home/amolnar/labRemoteMyClone/src/libZaber /home/amolnar/labRemoteMyClone/build /home/amolnar/labRemoteMyClone/build/src/libZaber /home/amolnar/labRemoteMyClone/build/src/libZaber/CMakeFiles/Zaber.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/libZaber/CMakeFiles/Zaber.dir/depend
