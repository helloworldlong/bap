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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/l/bap/utils/stp-2.1.2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/l/bap/utils/stp-2.1.2/build

# Include any dependencies generated for this target.
include lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/depend.make

# Include the progress variables for this target.
include lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/progress.make

# Include the compile flags for this target's objects.
include lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/flags.make

lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/AbstractionRefinement.cpp.o: lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/flags.make
lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/AbstractionRefinement.cpp.o: ../lib/AbsRefineCounterExample/AbstractionRefinement.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/l/bap/utils/stp-2.1.2/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/AbstractionRefinement.cpp.o"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/AbsRefineCounterExample && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/abstractionrefinement.dir/AbstractionRefinement.cpp.o -c /home/l/bap/utils/stp-2.1.2/lib/AbsRefineCounterExample/AbstractionRefinement.cpp

lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/AbstractionRefinement.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/abstractionrefinement.dir/AbstractionRefinement.cpp.i"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/AbsRefineCounterExample && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/l/bap/utils/stp-2.1.2/lib/AbsRefineCounterExample/AbstractionRefinement.cpp > CMakeFiles/abstractionrefinement.dir/AbstractionRefinement.cpp.i

lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/AbstractionRefinement.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/abstractionrefinement.dir/AbstractionRefinement.cpp.s"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/AbsRefineCounterExample && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/l/bap/utils/stp-2.1.2/lib/AbsRefineCounterExample/AbstractionRefinement.cpp -o CMakeFiles/abstractionrefinement.dir/AbstractionRefinement.cpp.s

lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/AbstractionRefinement.cpp.o.requires:
.PHONY : lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/AbstractionRefinement.cpp.o.requires

lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/AbstractionRefinement.cpp.o.provides: lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/AbstractionRefinement.cpp.o.requires
	$(MAKE) -f lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/build.make lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/AbstractionRefinement.cpp.o.provides.build
.PHONY : lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/AbstractionRefinement.cpp.o.provides

lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/AbstractionRefinement.cpp.o.provides.build: lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/AbstractionRefinement.cpp.o

lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/CounterExample.cpp.o: lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/flags.make
lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/CounterExample.cpp.o: ../lib/AbsRefineCounterExample/CounterExample.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/l/bap/utils/stp-2.1.2/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/CounterExample.cpp.o"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/AbsRefineCounterExample && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/abstractionrefinement.dir/CounterExample.cpp.o -c /home/l/bap/utils/stp-2.1.2/lib/AbsRefineCounterExample/CounterExample.cpp

lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/CounterExample.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/abstractionrefinement.dir/CounterExample.cpp.i"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/AbsRefineCounterExample && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/l/bap/utils/stp-2.1.2/lib/AbsRefineCounterExample/CounterExample.cpp > CMakeFiles/abstractionrefinement.dir/CounterExample.cpp.i

lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/CounterExample.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/abstractionrefinement.dir/CounterExample.cpp.s"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/AbsRefineCounterExample && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/l/bap/utils/stp-2.1.2/lib/AbsRefineCounterExample/CounterExample.cpp -o CMakeFiles/abstractionrefinement.dir/CounterExample.cpp.s

lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/CounterExample.cpp.o.requires:
.PHONY : lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/CounterExample.cpp.o.requires

lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/CounterExample.cpp.o.provides: lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/CounterExample.cpp.o.requires
	$(MAKE) -f lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/build.make lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/CounterExample.cpp.o.provides.build
.PHONY : lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/CounterExample.cpp.o.provides

lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/CounterExample.cpp.o.provides.build: lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/CounterExample.cpp.o

abstractionrefinement: lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/AbstractionRefinement.cpp.o
abstractionrefinement: lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/CounterExample.cpp.o
abstractionrefinement: lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/build.make
.PHONY : abstractionrefinement

# Rule to build all files generated by this target.
lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/build: abstractionrefinement
.PHONY : lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/build

lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/requires: lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/AbstractionRefinement.cpp.o.requires
lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/requires: lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/CounterExample.cpp.o.requires
.PHONY : lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/requires

lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/clean:
	cd /home/l/bap/utils/stp-2.1.2/build/lib/AbsRefineCounterExample && $(CMAKE_COMMAND) -P CMakeFiles/abstractionrefinement.dir/cmake_clean.cmake
.PHONY : lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/clean

lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/depend:
	cd /home/l/bap/utils/stp-2.1.2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/l/bap/utils/stp-2.1.2 /home/l/bap/utils/stp-2.1.2/lib/AbsRefineCounterExample /home/l/bap/utils/stp-2.1.2/build /home/l/bap/utils/stp-2.1.2/build/lib/AbsRefineCounterExample /home/l/bap/utils/stp-2.1.2/build/lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/depend
