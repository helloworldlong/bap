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
include lib/STPManager/CMakeFiles/stpmgr.dir/depend.make

# Include the progress variables for this target.
include lib/STPManager/CMakeFiles/stpmgr.dir/progress.make

# Include the compile flags for this target's objects.
include lib/STPManager/CMakeFiles/stpmgr.dir/flags.make

lib/STPManager/CMakeFiles/stpmgr.dir/STP.cpp.o: lib/STPManager/CMakeFiles/stpmgr.dir/flags.make
lib/STPManager/CMakeFiles/stpmgr.dir/STP.cpp.o: ../lib/STPManager/STP.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/l/bap/utils/stp-2.1.2/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object lib/STPManager/CMakeFiles/stpmgr.dir/STP.cpp.o"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/STPManager && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/stpmgr.dir/STP.cpp.o -c /home/l/bap/utils/stp-2.1.2/lib/STPManager/STP.cpp

lib/STPManager/CMakeFiles/stpmgr.dir/STP.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stpmgr.dir/STP.cpp.i"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/STPManager && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/l/bap/utils/stp-2.1.2/lib/STPManager/STP.cpp > CMakeFiles/stpmgr.dir/STP.cpp.i

lib/STPManager/CMakeFiles/stpmgr.dir/STP.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stpmgr.dir/STP.cpp.s"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/STPManager && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/l/bap/utils/stp-2.1.2/lib/STPManager/STP.cpp -o CMakeFiles/stpmgr.dir/STP.cpp.s

lib/STPManager/CMakeFiles/stpmgr.dir/STP.cpp.o.requires:
.PHONY : lib/STPManager/CMakeFiles/stpmgr.dir/STP.cpp.o.requires

lib/STPManager/CMakeFiles/stpmgr.dir/STP.cpp.o.provides: lib/STPManager/CMakeFiles/stpmgr.dir/STP.cpp.o.requires
	$(MAKE) -f lib/STPManager/CMakeFiles/stpmgr.dir/build.make lib/STPManager/CMakeFiles/stpmgr.dir/STP.cpp.o.provides.build
.PHONY : lib/STPManager/CMakeFiles/stpmgr.dir/STP.cpp.o.provides

lib/STPManager/CMakeFiles/stpmgr.dir/STP.cpp.o.provides.build: lib/STPManager/CMakeFiles/stpmgr.dir/STP.cpp.o

lib/STPManager/CMakeFiles/stpmgr.dir/STPManager.cpp.o: lib/STPManager/CMakeFiles/stpmgr.dir/flags.make
lib/STPManager/CMakeFiles/stpmgr.dir/STPManager.cpp.o: ../lib/STPManager/STPManager.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/l/bap/utils/stp-2.1.2/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object lib/STPManager/CMakeFiles/stpmgr.dir/STPManager.cpp.o"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/STPManager && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/stpmgr.dir/STPManager.cpp.o -c /home/l/bap/utils/stp-2.1.2/lib/STPManager/STPManager.cpp

lib/STPManager/CMakeFiles/stpmgr.dir/STPManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stpmgr.dir/STPManager.cpp.i"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/STPManager && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/l/bap/utils/stp-2.1.2/lib/STPManager/STPManager.cpp > CMakeFiles/stpmgr.dir/STPManager.cpp.i

lib/STPManager/CMakeFiles/stpmgr.dir/STPManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stpmgr.dir/STPManager.cpp.s"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/STPManager && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/l/bap/utils/stp-2.1.2/lib/STPManager/STPManager.cpp -o CMakeFiles/stpmgr.dir/STPManager.cpp.s

lib/STPManager/CMakeFiles/stpmgr.dir/STPManager.cpp.o.requires:
.PHONY : lib/STPManager/CMakeFiles/stpmgr.dir/STPManager.cpp.o.requires

lib/STPManager/CMakeFiles/stpmgr.dir/STPManager.cpp.o.provides: lib/STPManager/CMakeFiles/stpmgr.dir/STPManager.cpp.o.requires
	$(MAKE) -f lib/STPManager/CMakeFiles/stpmgr.dir/build.make lib/STPManager/CMakeFiles/stpmgr.dir/STPManager.cpp.o.provides.build
.PHONY : lib/STPManager/CMakeFiles/stpmgr.dir/STPManager.cpp.o.provides

lib/STPManager/CMakeFiles/stpmgr.dir/STPManager.cpp.o.provides.build: lib/STPManager/CMakeFiles/stpmgr.dir/STPManager.cpp.o

stpmgr: lib/STPManager/CMakeFiles/stpmgr.dir/STP.cpp.o
stpmgr: lib/STPManager/CMakeFiles/stpmgr.dir/STPManager.cpp.o
stpmgr: lib/STPManager/CMakeFiles/stpmgr.dir/build.make
.PHONY : stpmgr

# Rule to build all files generated by this target.
lib/STPManager/CMakeFiles/stpmgr.dir/build: stpmgr
.PHONY : lib/STPManager/CMakeFiles/stpmgr.dir/build

lib/STPManager/CMakeFiles/stpmgr.dir/requires: lib/STPManager/CMakeFiles/stpmgr.dir/STP.cpp.o.requires
lib/STPManager/CMakeFiles/stpmgr.dir/requires: lib/STPManager/CMakeFiles/stpmgr.dir/STPManager.cpp.o.requires
.PHONY : lib/STPManager/CMakeFiles/stpmgr.dir/requires

lib/STPManager/CMakeFiles/stpmgr.dir/clean:
	cd /home/l/bap/utils/stp-2.1.2/build/lib/STPManager && $(CMAKE_COMMAND) -P CMakeFiles/stpmgr.dir/cmake_clean.cmake
.PHONY : lib/STPManager/CMakeFiles/stpmgr.dir/clean

lib/STPManager/CMakeFiles/stpmgr.dir/depend:
	cd /home/l/bap/utils/stp-2.1.2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/l/bap/utils/stp-2.1.2 /home/l/bap/utils/stp-2.1.2/lib/STPManager /home/l/bap/utils/stp-2.1.2/build /home/l/bap/utils/stp-2.1.2/build/lib/STPManager /home/l/bap/utils/stp-2.1.2/build/lib/STPManager/CMakeFiles/stpmgr.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/STPManager/CMakeFiles/stpmgr.dir/depend
