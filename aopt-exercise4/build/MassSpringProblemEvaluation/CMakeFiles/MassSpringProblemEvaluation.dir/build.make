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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/val/Desktop/Teaching/AOPT/2021/packaged exercises/aopt-exercise4"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/val/Desktop/Teaching/AOPT/2021/packaged exercises/aopt-exercise4/build"

# Include any dependencies generated for this target.
include MassSpringProblemEvaluation/CMakeFiles/MassSpringProblemEvaluation.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include MassSpringProblemEvaluation/CMakeFiles/MassSpringProblemEvaluation.dir/compiler_depend.make

# Include the progress variables for this target.
include MassSpringProblemEvaluation/CMakeFiles/MassSpringProblemEvaluation.dir/progress.make

# Include the compile flags for this target's objects.
include MassSpringProblemEvaluation/CMakeFiles/MassSpringProblemEvaluation.dir/flags.make

MassSpringProblemEvaluation/CMakeFiles/MassSpringProblemEvaluation.dir/main.cc.o: MassSpringProblemEvaluation/CMakeFiles/MassSpringProblemEvaluation.dir/flags.make
MassSpringProblemEvaluation/CMakeFiles/MassSpringProblemEvaluation.dir/main.cc.o: ../MassSpringProblemEvaluation/main.cc
MassSpringProblemEvaluation/CMakeFiles/MassSpringProblemEvaluation.dir/main.cc.o: MassSpringProblemEvaluation/CMakeFiles/MassSpringProblemEvaluation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/val/Desktop/Teaching/AOPT/2021/packaged exercises/aopt-exercise4/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object MassSpringProblemEvaluation/CMakeFiles/MassSpringProblemEvaluation.dir/main.cc.o"
	cd "/Users/val/Desktop/Teaching/AOPT/2021/packaged exercises/aopt-exercise4/build/MassSpringProblemEvaluation" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT MassSpringProblemEvaluation/CMakeFiles/MassSpringProblemEvaluation.dir/main.cc.o -MF CMakeFiles/MassSpringProblemEvaluation.dir/main.cc.o.d -o CMakeFiles/MassSpringProblemEvaluation.dir/main.cc.o -c "/Users/val/Desktop/Teaching/AOPT/2021/packaged exercises/aopt-exercise4/MassSpringProblemEvaluation/main.cc"

MassSpringProblemEvaluation/CMakeFiles/MassSpringProblemEvaluation.dir/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MassSpringProblemEvaluation.dir/main.cc.i"
	cd "/Users/val/Desktop/Teaching/AOPT/2021/packaged exercises/aopt-exercise4/build/MassSpringProblemEvaluation" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/val/Desktop/Teaching/AOPT/2021/packaged exercises/aopt-exercise4/MassSpringProblemEvaluation/main.cc" > CMakeFiles/MassSpringProblemEvaluation.dir/main.cc.i

MassSpringProblemEvaluation/CMakeFiles/MassSpringProblemEvaluation.dir/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MassSpringProblemEvaluation.dir/main.cc.s"
	cd "/Users/val/Desktop/Teaching/AOPT/2021/packaged exercises/aopt-exercise4/build/MassSpringProblemEvaluation" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/val/Desktop/Teaching/AOPT/2021/packaged exercises/aopt-exercise4/MassSpringProblemEvaluation/main.cc" -o CMakeFiles/MassSpringProblemEvaluation.dir/main.cc.s

# Object files for target MassSpringProblemEvaluation
MassSpringProblemEvaluation_OBJECTS = \
"CMakeFiles/MassSpringProblemEvaluation.dir/main.cc.o"

# External object files for target MassSpringProblemEvaluation
MassSpringProblemEvaluation_EXTERNAL_OBJECTS =

Build/bin/MassSpringProblemEvaluation: MassSpringProblemEvaluation/CMakeFiles/MassSpringProblemEvaluation.dir/main.cc.o
Build/bin/MassSpringProblemEvaluation: MassSpringProblemEvaluation/CMakeFiles/MassSpringProblemEvaluation.dir/build.make
Build/bin/MassSpringProblemEvaluation: MassSpringProblemEvaluation/CMakeFiles/MassSpringProblemEvaluation.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/val/Desktop/Teaching/AOPT/2021/packaged exercises/aopt-exercise4/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../Build/bin/MassSpringProblemEvaluation"
	cd "/Users/val/Desktop/Teaching/AOPT/2021/packaged exercises/aopt-exercise4/build/MassSpringProblemEvaluation" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MassSpringProblemEvaluation.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
MassSpringProblemEvaluation/CMakeFiles/MassSpringProblemEvaluation.dir/build: Build/bin/MassSpringProblemEvaluation
.PHONY : MassSpringProblemEvaluation/CMakeFiles/MassSpringProblemEvaluation.dir/build

MassSpringProblemEvaluation/CMakeFiles/MassSpringProblemEvaluation.dir/clean:
	cd "/Users/val/Desktop/Teaching/AOPT/2021/packaged exercises/aopt-exercise4/build/MassSpringProblemEvaluation" && $(CMAKE_COMMAND) -P CMakeFiles/MassSpringProblemEvaluation.dir/cmake_clean.cmake
.PHONY : MassSpringProblemEvaluation/CMakeFiles/MassSpringProblemEvaluation.dir/clean

MassSpringProblemEvaluation/CMakeFiles/MassSpringProblemEvaluation.dir/depend:
	cd "/Users/val/Desktop/Teaching/AOPT/2021/packaged exercises/aopt-exercise4/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/val/Desktop/Teaching/AOPT/2021/packaged exercises/aopt-exercise4" "/Users/val/Desktop/Teaching/AOPT/2021/packaged exercises/aopt-exercise4/MassSpringProblemEvaluation" "/Users/val/Desktop/Teaching/AOPT/2021/packaged exercises/aopt-exercise4/build" "/Users/val/Desktop/Teaching/AOPT/2021/packaged exercises/aopt-exercise4/build/MassSpringProblemEvaluation" "/Users/val/Desktop/Teaching/AOPT/2021/packaged exercises/aopt-exercise4/build/MassSpringProblemEvaluation/CMakeFiles/MassSpringProblemEvaluation.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : MassSpringProblemEvaluation/CMakeFiles/MassSpringProblemEvaluation.dir/depend

