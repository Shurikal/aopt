# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /snap/clion/169/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/169/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/raphael/Documents/GitHub/aopt/aopt-exercise9/aopt-exercise9/aopt-exercise9

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/raphael/Documents/GitHub/aopt/aopt-exercise9/aopt-exercise9/aopt-exercise9/cmake-build-debug

# Include any dependencies generated for this target.
include LBFGS/CMakeFiles/LBFGS.dir/depend.make
# Include the progress variables for this target.
include LBFGS/CMakeFiles/LBFGS.dir/progress.make

# Include the compile flags for this target's objects.
include LBFGS/CMakeFiles/LBFGS.dir/flags.make

LBFGS/CMakeFiles/LBFGS.dir/main.cc.o: LBFGS/CMakeFiles/LBFGS.dir/flags.make
LBFGS/CMakeFiles/LBFGS.dir/main.cc.o: ../LBFGS/main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/raphael/Documents/GitHub/aopt/aopt-exercise9/aopt-exercise9/aopt-exercise9/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object LBFGS/CMakeFiles/LBFGS.dir/main.cc.o"
	cd /home/raphael/Documents/GitHub/aopt/aopt-exercise9/aopt-exercise9/aopt-exercise9/cmake-build-debug/LBFGS && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LBFGS.dir/main.cc.o -c /home/raphael/Documents/GitHub/aopt/aopt-exercise9/aopt-exercise9/aopt-exercise9/LBFGS/main.cc

LBFGS/CMakeFiles/LBFGS.dir/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LBFGS.dir/main.cc.i"
	cd /home/raphael/Documents/GitHub/aopt/aopt-exercise9/aopt-exercise9/aopt-exercise9/cmake-build-debug/LBFGS && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/raphael/Documents/GitHub/aopt/aopt-exercise9/aopt-exercise9/aopt-exercise9/LBFGS/main.cc > CMakeFiles/LBFGS.dir/main.cc.i

LBFGS/CMakeFiles/LBFGS.dir/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LBFGS.dir/main.cc.s"
	cd /home/raphael/Documents/GitHub/aopt/aopt-exercise9/aopt-exercise9/aopt-exercise9/cmake-build-debug/LBFGS && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/raphael/Documents/GitHub/aopt/aopt-exercise9/aopt-exercise9/aopt-exercise9/LBFGS/main.cc -o CMakeFiles/LBFGS.dir/main.cc.s

# Object files for target LBFGS
LBFGS_OBJECTS = \
"CMakeFiles/LBFGS.dir/main.cc.o"

# External object files for target LBFGS
LBFGS_EXTERNAL_OBJECTS =

Build/bin/LBFGS: LBFGS/CMakeFiles/LBFGS.dir/main.cc.o
Build/bin/LBFGS: LBFGS/CMakeFiles/LBFGS.dir/build.make
Build/bin/LBFGS: LBFGS/CMakeFiles/LBFGS.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/raphael/Documents/GitHub/aopt/aopt-exercise9/aopt-exercise9/aopt-exercise9/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../Build/bin/LBFGS"
	cd /home/raphael/Documents/GitHub/aopt/aopt-exercise9/aopt-exercise9/aopt-exercise9/cmake-build-debug/LBFGS && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LBFGS.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
LBFGS/CMakeFiles/LBFGS.dir/build: Build/bin/LBFGS
.PHONY : LBFGS/CMakeFiles/LBFGS.dir/build

LBFGS/CMakeFiles/LBFGS.dir/clean:
	cd /home/raphael/Documents/GitHub/aopt/aopt-exercise9/aopt-exercise9/aopt-exercise9/cmake-build-debug/LBFGS && $(CMAKE_COMMAND) -P CMakeFiles/LBFGS.dir/cmake_clean.cmake
.PHONY : LBFGS/CMakeFiles/LBFGS.dir/clean

LBFGS/CMakeFiles/LBFGS.dir/depend:
	cd /home/raphael/Documents/GitHub/aopt/aopt-exercise9/aopt-exercise9/aopt-exercise9/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/raphael/Documents/GitHub/aopt/aopt-exercise9/aopt-exercise9/aopt-exercise9 /home/raphael/Documents/GitHub/aopt/aopt-exercise9/aopt-exercise9/aopt-exercise9/LBFGS /home/raphael/Documents/GitHub/aopt/aopt-exercise9/aopt-exercise9/aopt-exercise9/cmake-build-debug /home/raphael/Documents/GitHub/aopt/aopt-exercise9/aopt-exercise9/aopt-exercise9/cmake-build-debug/LBFGS /home/raphael/Documents/GitHub/aopt/aopt-exercise9/aopt-exercise9/aopt-exercise9/cmake-build-debug/LBFGS/CMakeFiles/LBFGS.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : LBFGS/CMakeFiles/LBFGS.dir/depend

