# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /workspaces/carma_ws/src/carma-utils/wgs84_utils

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /workspaces/carma_ws/src/build/wgs84_utils

# Include any dependencies generated for this target.
include CMakeFiles/wgs84_utils_library.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/wgs84_utils_library.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/wgs84_utils_library.dir/flags.make

CMakeFiles/wgs84_utils_library.dir/src/wgs84_utils/wgs84_utils.cpp.o: CMakeFiles/wgs84_utils_library.dir/flags.make
CMakeFiles/wgs84_utils_library.dir/src/wgs84_utils/wgs84_utils.cpp.o: /workspaces/carma_ws/src/carma-utils/wgs84_utils/src/wgs84_utils/wgs84_utils.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/carma_ws/src/build/wgs84_utils/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/wgs84_utils_library.dir/src/wgs84_utils/wgs84_utils.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/wgs84_utils_library.dir/src/wgs84_utils/wgs84_utils.cpp.o -c /workspaces/carma_ws/src/carma-utils/wgs84_utils/src/wgs84_utils/wgs84_utils.cpp

CMakeFiles/wgs84_utils_library.dir/src/wgs84_utils/wgs84_utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wgs84_utils_library.dir/src/wgs84_utils/wgs84_utils.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspaces/carma_ws/src/carma-utils/wgs84_utils/src/wgs84_utils/wgs84_utils.cpp > CMakeFiles/wgs84_utils_library.dir/src/wgs84_utils/wgs84_utils.cpp.i

CMakeFiles/wgs84_utils_library.dir/src/wgs84_utils/wgs84_utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wgs84_utils_library.dir/src/wgs84_utils/wgs84_utils.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspaces/carma_ws/src/carma-utils/wgs84_utils/src/wgs84_utils/wgs84_utils.cpp -o CMakeFiles/wgs84_utils_library.dir/src/wgs84_utils/wgs84_utils.cpp.s

CMakeFiles/wgs84_utils_library.dir/src/wgs84_utils/proj_tools.cpp.o: CMakeFiles/wgs84_utils_library.dir/flags.make
CMakeFiles/wgs84_utils_library.dir/src/wgs84_utils/proj_tools.cpp.o: /workspaces/carma_ws/src/carma-utils/wgs84_utils/src/wgs84_utils/proj_tools.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/carma_ws/src/build/wgs84_utils/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/wgs84_utils_library.dir/src/wgs84_utils/proj_tools.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/wgs84_utils_library.dir/src/wgs84_utils/proj_tools.cpp.o -c /workspaces/carma_ws/src/carma-utils/wgs84_utils/src/wgs84_utils/proj_tools.cpp

CMakeFiles/wgs84_utils_library.dir/src/wgs84_utils/proj_tools.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wgs84_utils_library.dir/src/wgs84_utils/proj_tools.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspaces/carma_ws/src/carma-utils/wgs84_utils/src/wgs84_utils/proj_tools.cpp > CMakeFiles/wgs84_utils_library.dir/src/wgs84_utils/proj_tools.cpp.i

CMakeFiles/wgs84_utils_library.dir/src/wgs84_utils/proj_tools.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wgs84_utils_library.dir/src/wgs84_utils/proj_tools.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspaces/carma_ws/src/carma-utils/wgs84_utils/src/wgs84_utils/proj_tools.cpp -o CMakeFiles/wgs84_utils_library.dir/src/wgs84_utils/proj_tools.cpp.s

# Object files for target wgs84_utils_library
wgs84_utils_library_OBJECTS = \
"CMakeFiles/wgs84_utils_library.dir/src/wgs84_utils/wgs84_utils.cpp.o" \
"CMakeFiles/wgs84_utils_library.dir/src/wgs84_utils/proj_tools.cpp.o"

# External object files for target wgs84_utils_library
wgs84_utils_library_EXTERNAL_OBJECTS =

devel/lib/libwgs84_utils_library.so: CMakeFiles/wgs84_utils_library.dir/src/wgs84_utils/wgs84_utils.cpp.o
devel/lib/libwgs84_utils_library.so: CMakeFiles/wgs84_utils_library.dir/src/wgs84_utils/proj_tools.cpp.o
devel/lib/libwgs84_utils_library.so: CMakeFiles/wgs84_utils_library.dir/build.make
devel/lib/libwgs84_utils_library.so: CMakeFiles/wgs84_utils_library.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/workspaces/carma_ws/src/build/wgs84_utils/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library devel/lib/libwgs84_utils_library.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/wgs84_utils_library.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/wgs84_utils_library.dir/build: devel/lib/libwgs84_utils_library.so

.PHONY : CMakeFiles/wgs84_utils_library.dir/build

CMakeFiles/wgs84_utils_library.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/wgs84_utils_library.dir/cmake_clean.cmake
.PHONY : CMakeFiles/wgs84_utils_library.dir/clean

CMakeFiles/wgs84_utils_library.dir/depend:
	cd /workspaces/carma_ws/src/build/wgs84_utils && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/carma_ws/src/carma-utils/wgs84_utils /workspaces/carma_ws/src/carma-utils/wgs84_utils /workspaces/carma_ws/src/build/wgs84_utils /workspaces/carma_ws/src/build/wgs84_utils /workspaces/carma_ws/src/build/wgs84_utils/CMakeFiles/wgs84_utils_library.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/wgs84_utils_library.dir/depend
