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
include tools/time_constantbitprop/CMakeFiles/time_constantbitprop.dir/depend.make

# Include the progress variables for this target.
include tools/time_constantbitprop/CMakeFiles/time_constantbitprop.dir/progress.make

# Include the compile flags for this target's objects.
include tools/time_constantbitprop/CMakeFiles/time_constantbitprop.dir/flags.make

tools/time_constantbitprop/CMakeFiles/time_constantbitprop.dir/time_cbitp.cpp.o: tools/time_constantbitprop/CMakeFiles/time_constantbitprop.dir/flags.make
tools/time_constantbitprop/CMakeFiles/time_constantbitprop.dir/time_cbitp.cpp.o: ../tools/time_constantbitprop/time_cbitp.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/l/bap/utils/stp-2.1.2/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tools/time_constantbitprop/CMakeFiles/time_constantbitprop.dir/time_cbitp.cpp.o"
	cd /home/l/bap/utils/stp-2.1.2/build/tools/time_constantbitprop && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/time_constantbitprop.dir/time_cbitp.cpp.o -c /home/l/bap/utils/stp-2.1.2/tools/time_constantbitprop/time_cbitp.cpp

tools/time_constantbitprop/CMakeFiles/time_constantbitprop.dir/time_cbitp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/time_constantbitprop.dir/time_cbitp.cpp.i"
	cd /home/l/bap/utils/stp-2.1.2/build/tools/time_constantbitprop && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/l/bap/utils/stp-2.1.2/tools/time_constantbitprop/time_cbitp.cpp > CMakeFiles/time_constantbitprop.dir/time_cbitp.cpp.i

tools/time_constantbitprop/CMakeFiles/time_constantbitprop.dir/time_cbitp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/time_constantbitprop.dir/time_cbitp.cpp.s"
	cd /home/l/bap/utils/stp-2.1.2/build/tools/time_constantbitprop && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/l/bap/utils/stp-2.1.2/tools/time_constantbitprop/time_cbitp.cpp -o CMakeFiles/time_constantbitprop.dir/time_cbitp.cpp.s

tools/time_constantbitprop/CMakeFiles/time_constantbitprop.dir/time_cbitp.cpp.o.requires:
.PHONY : tools/time_constantbitprop/CMakeFiles/time_constantbitprop.dir/time_cbitp.cpp.o.requires

tools/time_constantbitprop/CMakeFiles/time_constantbitprop.dir/time_cbitp.cpp.o.provides: tools/time_constantbitprop/CMakeFiles/time_constantbitprop.dir/time_cbitp.cpp.o.requires
	$(MAKE) -f tools/time_constantbitprop/CMakeFiles/time_constantbitprop.dir/build.make tools/time_constantbitprop/CMakeFiles/time_constantbitprop.dir/time_cbitp.cpp.o.provides.build
.PHONY : tools/time_constantbitprop/CMakeFiles/time_constantbitprop.dir/time_cbitp.cpp.o.provides

tools/time_constantbitprop/CMakeFiles/time_constantbitprop.dir/time_cbitp.cpp.o.provides.build: tools/time_constantbitprop/CMakeFiles/time_constantbitprop.dir/time_cbitp.cpp.o

# Object files for target time_constantbitprop
time_constantbitprop_OBJECTS = \
"CMakeFiles/time_constantbitprop.dir/time_cbitp.cpp.o"

# External object files for target time_constantbitprop
time_constantbitprop_EXTERNAL_OBJECTS =

tools/time_constantbitprop/time_constantbitprop: tools/time_constantbitprop/CMakeFiles/time_constantbitprop.dir/time_cbitp.cpp.o
tools/time_constantbitprop/time_constantbitprop: tools/time_constantbitprop/CMakeFiles/time_constantbitprop.dir/build.make
tools/time_constantbitprop/time_constantbitprop: lib/libstp.so.2.1.2
tools/time_constantbitprop/time_constantbitprop: /usr/lib/i386-linux-gnu/libboost_program_options.so
tools/time_constantbitprop/time_constantbitprop: /usr/local/lib/libminisat.so
tools/time_constantbitprop/time_constantbitprop: tools/time_constantbitprop/CMakeFiles/time_constantbitprop.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable time_constantbitprop"
	cd /home/l/bap/utils/stp-2.1.2/build/tools/time_constantbitprop && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/time_constantbitprop.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/time_constantbitprop/CMakeFiles/time_constantbitprop.dir/build: tools/time_constantbitprop/time_constantbitprop
.PHONY : tools/time_constantbitprop/CMakeFiles/time_constantbitprop.dir/build

tools/time_constantbitprop/CMakeFiles/time_constantbitprop.dir/requires: tools/time_constantbitprop/CMakeFiles/time_constantbitprop.dir/time_cbitp.cpp.o.requires
.PHONY : tools/time_constantbitprop/CMakeFiles/time_constantbitprop.dir/requires

tools/time_constantbitprop/CMakeFiles/time_constantbitprop.dir/clean:
	cd /home/l/bap/utils/stp-2.1.2/build/tools/time_constantbitprop && $(CMAKE_COMMAND) -P CMakeFiles/time_constantbitprop.dir/cmake_clean.cmake
.PHONY : tools/time_constantbitprop/CMakeFiles/time_constantbitprop.dir/clean

tools/time_constantbitprop/CMakeFiles/time_constantbitprop.dir/depend:
	cd /home/l/bap/utils/stp-2.1.2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/l/bap/utils/stp-2.1.2 /home/l/bap/utils/stp-2.1.2/tools/time_constantbitprop /home/l/bap/utils/stp-2.1.2/build /home/l/bap/utils/stp-2.1.2/build/tools/time_constantbitprop /home/l/bap/utils/stp-2.1.2/build/tools/time_constantbitprop/CMakeFiles/time_constantbitprop.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/time_constantbitprop/CMakeFiles/time_constantbitprop.dir/depend

