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

# Utility rule file for CopyPublicHeaders.

# Include the progress variables for this target.
include lib/Interface/CMakeFiles/CopyPublicHeaders.dir/progress.make

lib/Interface/CMakeFiles/CopyPublicHeaders:

CopyPublicHeaders: lib/Interface/CMakeFiles/CopyPublicHeaders
CopyPublicHeaders: lib/Interface/CMakeFiles/CopyPublicHeaders.dir/build.make
	cd /home/l/bap/utils/stp-2.1.2/build/lib/Interface && /usr/bin/cmake -E make_directory /home/l/bap/utils/stp-2.1.2/build/include/stp
	cd /home/l/bap/utils/stp-2.1.2/build/lib/Interface && /usr/bin/cmake -E echo LEGACY:\ Copying\ c_interface.h\ to\ /home/l/bap/utils/stp-2.1.2/build/include/stp
	cd /home/l/bap/utils/stp-2.1.2/build/lib/Interface && /usr/bin/cmake -E copy_if_different /home/l/bap/utils/stp-2.1.2/include/stp/c_interface.h /home/l/bap/utils/stp-2.1.2/build/include/stp/c_interface.h
	cd /home/l/bap/utils/stp-2.1.2/build/lib/Interface && /usr/bin/cmake -E make_directory /home/l/bap/utils/stp-2.1.2/build/include/stp
	cd /home/l/bap/utils/stp-2.1.2/build/lib/Interface && /usr/bin/cmake -E echo LEGACY:\ Copying\ cpp_interface.h\ to\ /home/l/bap/utils/stp-2.1.2/build/include/stp
	cd /home/l/bap/utils/stp-2.1.2/build/lib/Interface && /usr/bin/cmake -E copy_if_different /home/l/bap/utils/stp-2.1.2/include/stp/cpp_interface.h /home/l/bap/utils/stp-2.1.2/build/include/stp/cpp_interface.h
.PHONY : CopyPublicHeaders

# Rule to build all files generated by this target.
lib/Interface/CMakeFiles/CopyPublicHeaders.dir/build: CopyPublicHeaders
.PHONY : lib/Interface/CMakeFiles/CopyPublicHeaders.dir/build

lib/Interface/CMakeFiles/CopyPublicHeaders.dir/clean:
	cd /home/l/bap/utils/stp-2.1.2/build/lib/Interface && $(CMAKE_COMMAND) -P CMakeFiles/CopyPublicHeaders.dir/cmake_clean.cmake
.PHONY : lib/Interface/CMakeFiles/CopyPublicHeaders.dir/clean

lib/Interface/CMakeFiles/CopyPublicHeaders.dir/depend:
	cd /home/l/bap/utils/stp-2.1.2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/l/bap/utils/stp-2.1.2 /home/l/bap/utils/stp-2.1.2/lib/Interface /home/l/bap/utils/stp-2.1.2/build /home/l/bap/utils/stp-2.1.2/build/lib/Interface /home/l/bap/utils/stp-2.1.2/build/lib/Interface/CMakeFiles/CopyPublicHeaders.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/Interface/CMakeFiles/CopyPublicHeaders.dir/depend
