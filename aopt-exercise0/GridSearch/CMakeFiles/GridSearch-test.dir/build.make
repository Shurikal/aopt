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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/chris/OneDrive/Bern/Semester_01/Applied_Optimization/Exercises/aopt-exercise0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/chris/OneDrive/Bern/Semester_01/Applied_Optimization/Exercises/aopt-exercise0

# Include any dependencies generated for this target.
include GridSearch/CMakeFiles/GridSearch-test.dir/depend.make
# Include the progress variables for this target.
include GridSearch/CMakeFiles/GridSearch-test.dir/progress.make

# Include the compile flags for this target's objects.
include GridSearch/CMakeFiles/GridSearch-test.dir/flags.make

GridSearch/CMakeFiles/GridSearch-test.dir/unit_tests.cc.o: GridSearch/CMakeFiles/GridSearch-test.dir/flags.make
GridSearch/CMakeFiles/GridSearch-test.dir/unit_tests.cc.o: GridSearch/unit_tests.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chris/OneDrive/Bern/Semester_01/Applied_Optimization/Exercises/aopt-exercise0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object GridSearch/CMakeFiles/GridSearch-test.dir/unit_tests.cc.o"
	cd /Users/chris/OneDrive/Bern/Semester_01/Applied_Optimization/Exercises/aopt-exercise0/GridSearch && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/GridSearch-test.dir/unit_tests.cc.o -c /Users/chris/OneDrive/Bern/Semester_01/Applied_Optimization/Exercises/aopt-exercise0/GridSearch/unit_tests.cc

GridSearch/CMakeFiles/GridSearch-test.dir/unit_tests.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GridSearch-test.dir/unit_tests.cc.i"
	cd /Users/chris/OneDrive/Bern/Semester_01/Applied_Optimization/Exercises/aopt-exercise0/GridSearch && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chris/OneDrive/Bern/Semester_01/Applied_Optimization/Exercises/aopt-exercise0/GridSearch/unit_tests.cc > CMakeFiles/GridSearch-test.dir/unit_tests.cc.i

GridSearch/CMakeFiles/GridSearch-test.dir/unit_tests.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GridSearch-test.dir/unit_tests.cc.s"
	cd /Users/chris/OneDrive/Bern/Semester_01/Applied_Optimization/Exercises/aopt-exercise0/GridSearch && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chris/OneDrive/Bern/Semester_01/Applied_Optimization/Exercises/aopt-exercise0/GridSearch/unit_tests.cc -o CMakeFiles/GridSearch-test.dir/unit_tests.cc.s

# Object files for target GridSearch-test
GridSearch__test_OBJECTS = \
"CMakeFiles/GridSearch-test.dir/unit_tests.cc.o"

# External object files for target GridSearch-test
GridSearch__test_EXTERNAL_OBJECTS =

Build/bin/GridSearch-test: GridSearch/CMakeFiles/GridSearch-test.dir/unit_tests.cc.o
Build/bin/GridSearch-test: GridSearch/CMakeFiles/GridSearch-test.dir/build.make
Build/bin/GridSearch-test: lib/libgtestd.a
Build/bin/GridSearch-test: lib/libgtest_maind.a
Build/bin/GridSearch-test: lib/libgtestd.a
Build/bin/GridSearch-test: GridSearch/CMakeFiles/GridSearch-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/chris/OneDrive/Bern/Semester_01/Applied_Optimization/Exercises/aopt-exercise0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../Build/bin/GridSearch-test"
	cd /Users/chris/OneDrive/Bern/Semester_01/Applied_Optimization/Exercises/aopt-exercise0/GridSearch && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/GridSearch-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
GridSearch/CMakeFiles/GridSearch-test.dir/build: Build/bin/GridSearch-test
.PHONY : GridSearch/CMakeFiles/GridSearch-test.dir/build

GridSearch/CMakeFiles/GridSearch-test.dir/clean:
	cd /Users/chris/OneDrive/Bern/Semester_01/Applied_Optimization/Exercises/aopt-exercise0/GridSearch && $(CMAKE_COMMAND) -P CMakeFiles/GridSearch-test.dir/cmake_clean.cmake
.PHONY : GridSearch/CMakeFiles/GridSearch-test.dir/clean

GridSearch/CMakeFiles/GridSearch-test.dir/depend:
	cd /Users/chris/OneDrive/Bern/Semester_01/Applied_Optimization/Exercises/aopt-exercise0 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/chris/OneDrive/Bern/Semester_01/Applied_Optimization/Exercises/aopt-exercise0 /Users/chris/OneDrive/Bern/Semester_01/Applied_Optimization/Exercises/aopt-exercise0/GridSearch /Users/chris/OneDrive/Bern/Semester_01/Applied_Optimization/Exercises/aopt-exercise0 /Users/chris/OneDrive/Bern/Semester_01/Applied_Optimization/Exercises/aopt-exercise0/GridSearch /Users/chris/OneDrive/Bern/Semester_01/Applied_Optimization/Exercises/aopt-exercise0/GridSearch/CMakeFiles/GridSearch-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : GridSearch/CMakeFiles/GridSearch-test.dir/depend

