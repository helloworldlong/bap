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
include lib/ToSat/CMakeFiles/tosat.dir/depend.make

# Include the progress variables for this target.
include lib/ToSat/CMakeFiles/tosat.dir/progress.make

# Include the compile flags for this target's objects.
include lib/ToSat/CMakeFiles/tosat.dir/flags.make

lib/ToSat/CMakeFiles/tosat.dir/BitBlaster.cpp.o: lib/ToSat/CMakeFiles/tosat.dir/flags.make
lib/ToSat/CMakeFiles/tosat.dir/BitBlaster.cpp.o: ../lib/ToSat/BitBlaster.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/l/bap/utils/stp-2.1.2/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object lib/ToSat/CMakeFiles/tosat.dir/BitBlaster.cpp.o"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/ToSat && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/tosat.dir/BitBlaster.cpp.o -c /home/l/bap/utils/stp-2.1.2/lib/ToSat/BitBlaster.cpp

lib/ToSat/CMakeFiles/tosat.dir/BitBlaster.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tosat.dir/BitBlaster.cpp.i"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/ToSat && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/l/bap/utils/stp-2.1.2/lib/ToSat/BitBlaster.cpp > CMakeFiles/tosat.dir/BitBlaster.cpp.i

lib/ToSat/CMakeFiles/tosat.dir/BitBlaster.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tosat.dir/BitBlaster.cpp.s"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/ToSat && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/l/bap/utils/stp-2.1.2/lib/ToSat/BitBlaster.cpp -o CMakeFiles/tosat.dir/BitBlaster.cpp.s

lib/ToSat/CMakeFiles/tosat.dir/BitBlaster.cpp.o.requires:
.PHONY : lib/ToSat/CMakeFiles/tosat.dir/BitBlaster.cpp.o.requires

lib/ToSat/CMakeFiles/tosat.dir/BitBlaster.cpp.o.provides: lib/ToSat/CMakeFiles/tosat.dir/BitBlaster.cpp.o.requires
	$(MAKE) -f lib/ToSat/CMakeFiles/tosat.dir/build.make lib/ToSat/CMakeFiles/tosat.dir/BitBlaster.cpp.o.provides.build
.PHONY : lib/ToSat/CMakeFiles/tosat.dir/BitBlaster.cpp.o.provides

lib/ToSat/CMakeFiles/tosat.dir/BitBlaster.cpp.o.provides.build: lib/ToSat/CMakeFiles/tosat.dir/BitBlaster.cpp.o

lib/ToSat/CMakeFiles/tosat.dir/ToSATBase.cpp.o: lib/ToSat/CMakeFiles/tosat.dir/flags.make
lib/ToSat/CMakeFiles/tosat.dir/ToSATBase.cpp.o: ../lib/ToSat/ToSATBase.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/l/bap/utils/stp-2.1.2/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object lib/ToSat/CMakeFiles/tosat.dir/ToSATBase.cpp.o"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/ToSat && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/tosat.dir/ToSATBase.cpp.o -c /home/l/bap/utils/stp-2.1.2/lib/ToSat/ToSATBase.cpp

lib/ToSat/CMakeFiles/tosat.dir/ToSATBase.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tosat.dir/ToSATBase.cpp.i"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/ToSat && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/l/bap/utils/stp-2.1.2/lib/ToSat/ToSATBase.cpp > CMakeFiles/tosat.dir/ToSATBase.cpp.i

lib/ToSat/CMakeFiles/tosat.dir/ToSATBase.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tosat.dir/ToSATBase.cpp.s"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/ToSat && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/l/bap/utils/stp-2.1.2/lib/ToSat/ToSATBase.cpp -o CMakeFiles/tosat.dir/ToSATBase.cpp.s

lib/ToSat/CMakeFiles/tosat.dir/ToSATBase.cpp.o.requires:
.PHONY : lib/ToSat/CMakeFiles/tosat.dir/ToSATBase.cpp.o.requires

lib/ToSat/CMakeFiles/tosat.dir/ToSATBase.cpp.o.provides: lib/ToSat/CMakeFiles/tosat.dir/ToSATBase.cpp.o.requires
	$(MAKE) -f lib/ToSat/CMakeFiles/tosat.dir/build.make lib/ToSat/CMakeFiles/tosat.dir/ToSATBase.cpp.o.provides.build
.PHONY : lib/ToSat/CMakeFiles/tosat.dir/ToSATBase.cpp.o.provides

lib/ToSat/CMakeFiles/tosat.dir/ToSATBase.cpp.o.provides.build: lib/ToSat/CMakeFiles/tosat.dir/ToSATBase.cpp.o

lib/ToSat/CMakeFiles/tosat.dir/AIG/BBNodeManagerAIG.cpp.o: lib/ToSat/CMakeFiles/tosat.dir/flags.make
lib/ToSat/CMakeFiles/tosat.dir/AIG/BBNodeManagerAIG.cpp.o: ../lib/ToSat/AIG/BBNodeManagerAIG.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/l/bap/utils/stp-2.1.2/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object lib/ToSat/CMakeFiles/tosat.dir/AIG/BBNodeManagerAIG.cpp.o"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/ToSat && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/tosat.dir/AIG/BBNodeManagerAIG.cpp.o -c /home/l/bap/utils/stp-2.1.2/lib/ToSat/AIG/BBNodeManagerAIG.cpp

lib/ToSat/CMakeFiles/tosat.dir/AIG/BBNodeManagerAIG.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tosat.dir/AIG/BBNodeManagerAIG.cpp.i"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/ToSat && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/l/bap/utils/stp-2.1.2/lib/ToSat/AIG/BBNodeManagerAIG.cpp > CMakeFiles/tosat.dir/AIG/BBNodeManagerAIG.cpp.i

lib/ToSat/CMakeFiles/tosat.dir/AIG/BBNodeManagerAIG.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tosat.dir/AIG/BBNodeManagerAIG.cpp.s"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/ToSat && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/l/bap/utils/stp-2.1.2/lib/ToSat/AIG/BBNodeManagerAIG.cpp -o CMakeFiles/tosat.dir/AIG/BBNodeManagerAIG.cpp.s

lib/ToSat/CMakeFiles/tosat.dir/AIG/BBNodeManagerAIG.cpp.o.requires:
.PHONY : lib/ToSat/CMakeFiles/tosat.dir/AIG/BBNodeManagerAIG.cpp.o.requires

lib/ToSat/CMakeFiles/tosat.dir/AIG/BBNodeManagerAIG.cpp.o.provides: lib/ToSat/CMakeFiles/tosat.dir/AIG/BBNodeManagerAIG.cpp.o.requires
	$(MAKE) -f lib/ToSat/CMakeFiles/tosat.dir/build.make lib/ToSat/CMakeFiles/tosat.dir/AIG/BBNodeManagerAIG.cpp.o.provides.build
.PHONY : lib/ToSat/CMakeFiles/tosat.dir/AIG/BBNodeManagerAIG.cpp.o.provides

lib/ToSat/CMakeFiles/tosat.dir/AIG/BBNodeManagerAIG.cpp.o.provides.build: lib/ToSat/CMakeFiles/tosat.dir/AIG/BBNodeManagerAIG.cpp.o

lib/ToSat/CMakeFiles/tosat.dir/AIG/ToCNFAIG.cpp.o: lib/ToSat/CMakeFiles/tosat.dir/flags.make
lib/ToSat/CMakeFiles/tosat.dir/AIG/ToCNFAIG.cpp.o: ../lib/ToSat/AIG/ToCNFAIG.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/l/bap/utils/stp-2.1.2/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object lib/ToSat/CMakeFiles/tosat.dir/AIG/ToCNFAIG.cpp.o"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/ToSat && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/tosat.dir/AIG/ToCNFAIG.cpp.o -c /home/l/bap/utils/stp-2.1.2/lib/ToSat/AIG/ToCNFAIG.cpp

lib/ToSat/CMakeFiles/tosat.dir/AIG/ToCNFAIG.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tosat.dir/AIG/ToCNFAIG.cpp.i"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/ToSat && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/l/bap/utils/stp-2.1.2/lib/ToSat/AIG/ToCNFAIG.cpp > CMakeFiles/tosat.dir/AIG/ToCNFAIG.cpp.i

lib/ToSat/CMakeFiles/tosat.dir/AIG/ToCNFAIG.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tosat.dir/AIG/ToCNFAIG.cpp.s"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/ToSat && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/l/bap/utils/stp-2.1.2/lib/ToSat/AIG/ToCNFAIG.cpp -o CMakeFiles/tosat.dir/AIG/ToCNFAIG.cpp.s

lib/ToSat/CMakeFiles/tosat.dir/AIG/ToCNFAIG.cpp.o.requires:
.PHONY : lib/ToSat/CMakeFiles/tosat.dir/AIG/ToCNFAIG.cpp.o.requires

lib/ToSat/CMakeFiles/tosat.dir/AIG/ToCNFAIG.cpp.o.provides: lib/ToSat/CMakeFiles/tosat.dir/AIG/ToCNFAIG.cpp.o.requires
	$(MAKE) -f lib/ToSat/CMakeFiles/tosat.dir/build.make lib/ToSat/CMakeFiles/tosat.dir/AIG/ToCNFAIG.cpp.o.provides.build
.PHONY : lib/ToSat/CMakeFiles/tosat.dir/AIG/ToCNFAIG.cpp.o.provides

lib/ToSat/CMakeFiles/tosat.dir/AIG/ToCNFAIG.cpp.o.provides.build: lib/ToSat/CMakeFiles/tosat.dir/AIG/ToCNFAIG.cpp.o

lib/ToSat/CMakeFiles/tosat.dir/AIG/ToSATAIG.cpp.o: lib/ToSat/CMakeFiles/tosat.dir/flags.make
lib/ToSat/CMakeFiles/tosat.dir/AIG/ToSATAIG.cpp.o: ../lib/ToSat/AIG/ToSATAIG.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/l/bap/utils/stp-2.1.2/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object lib/ToSat/CMakeFiles/tosat.dir/AIG/ToSATAIG.cpp.o"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/ToSat && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/tosat.dir/AIG/ToSATAIG.cpp.o -c /home/l/bap/utils/stp-2.1.2/lib/ToSat/AIG/ToSATAIG.cpp

lib/ToSat/CMakeFiles/tosat.dir/AIG/ToSATAIG.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tosat.dir/AIG/ToSATAIG.cpp.i"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/ToSat && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/l/bap/utils/stp-2.1.2/lib/ToSat/AIG/ToSATAIG.cpp > CMakeFiles/tosat.dir/AIG/ToSATAIG.cpp.i

lib/ToSat/CMakeFiles/tosat.dir/AIG/ToSATAIG.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tosat.dir/AIG/ToSATAIG.cpp.s"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/ToSat && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/l/bap/utils/stp-2.1.2/lib/ToSat/AIG/ToSATAIG.cpp -o CMakeFiles/tosat.dir/AIG/ToSATAIG.cpp.s

lib/ToSat/CMakeFiles/tosat.dir/AIG/ToSATAIG.cpp.o.requires:
.PHONY : lib/ToSat/CMakeFiles/tosat.dir/AIG/ToSATAIG.cpp.o.requires

lib/ToSat/CMakeFiles/tosat.dir/AIG/ToSATAIG.cpp.o.provides: lib/ToSat/CMakeFiles/tosat.dir/AIG/ToSATAIG.cpp.o.requires
	$(MAKE) -f lib/ToSat/CMakeFiles/tosat.dir/build.make lib/ToSat/CMakeFiles/tosat.dir/AIG/ToSATAIG.cpp.o.provides.build
.PHONY : lib/ToSat/CMakeFiles/tosat.dir/AIG/ToSATAIG.cpp.o.provides

lib/ToSat/CMakeFiles/tosat.dir/AIG/ToSATAIG.cpp.o.provides.build: lib/ToSat/CMakeFiles/tosat.dir/AIG/ToSATAIG.cpp.o

lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ClauseList.cpp.o: lib/ToSat/CMakeFiles/tosat.dir/flags.make
lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ClauseList.cpp.o: ../lib/ToSat/ASTNode/ClauseList.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/l/bap/utils/stp-2.1.2/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ClauseList.cpp.o"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/ToSat && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/tosat.dir/ASTNode/ClauseList.cpp.o -c /home/l/bap/utils/stp-2.1.2/lib/ToSat/ASTNode/ClauseList.cpp

lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ClauseList.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tosat.dir/ASTNode/ClauseList.cpp.i"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/ToSat && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/l/bap/utils/stp-2.1.2/lib/ToSat/ASTNode/ClauseList.cpp > CMakeFiles/tosat.dir/ASTNode/ClauseList.cpp.i

lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ClauseList.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tosat.dir/ASTNode/ClauseList.cpp.s"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/ToSat && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/l/bap/utils/stp-2.1.2/lib/ToSat/ASTNode/ClauseList.cpp -o CMakeFiles/tosat.dir/ASTNode/ClauseList.cpp.s

lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ClauseList.cpp.o.requires:
.PHONY : lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ClauseList.cpp.o.requires

lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ClauseList.cpp.o.provides: lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ClauseList.cpp.o.requires
	$(MAKE) -f lib/ToSat/CMakeFiles/tosat.dir/build.make lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ClauseList.cpp.o.provides.build
.PHONY : lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ClauseList.cpp.o.provides

lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ClauseList.cpp.o.provides.build: lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ClauseList.cpp.o

lib/ToSat/CMakeFiles/tosat.dir/ASTNode/SimpBool.cpp.o: lib/ToSat/CMakeFiles/tosat.dir/flags.make
lib/ToSat/CMakeFiles/tosat.dir/ASTNode/SimpBool.cpp.o: ../lib/ToSat/ASTNode/SimpBool.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/l/bap/utils/stp-2.1.2/build/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object lib/ToSat/CMakeFiles/tosat.dir/ASTNode/SimpBool.cpp.o"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/ToSat && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/tosat.dir/ASTNode/SimpBool.cpp.o -c /home/l/bap/utils/stp-2.1.2/lib/ToSat/ASTNode/SimpBool.cpp

lib/ToSat/CMakeFiles/tosat.dir/ASTNode/SimpBool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tosat.dir/ASTNode/SimpBool.cpp.i"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/ToSat && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/l/bap/utils/stp-2.1.2/lib/ToSat/ASTNode/SimpBool.cpp > CMakeFiles/tosat.dir/ASTNode/SimpBool.cpp.i

lib/ToSat/CMakeFiles/tosat.dir/ASTNode/SimpBool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tosat.dir/ASTNode/SimpBool.cpp.s"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/ToSat && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/l/bap/utils/stp-2.1.2/lib/ToSat/ASTNode/SimpBool.cpp -o CMakeFiles/tosat.dir/ASTNode/SimpBool.cpp.s

lib/ToSat/CMakeFiles/tosat.dir/ASTNode/SimpBool.cpp.o.requires:
.PHONY : lib/ToSat/CMakeFiles/tosat.dir/ASTNode/SimpBool.cpp.o.requires

lib/ToSat/CMakeFiles/tosat.dir/ASTNode/SimpBool.cpp.o.provides: lib/ToSat/CMakeFiles/tosat.dir/ASTNode/SimpBool.cpp.o.requires
	$(MAKE) -f lib/ToSat/CMakeFiles/tosat.dir/build.make lib/ToSat/CMakeFiles/tosat.dir/ASTNode/SimpBool.cpp.o.provides.build
.PHONY : lib/ToSat/CMakeFiles/tosat.dir/ASTNode/SimpBool.cpp.o.provides

lib/ToSat/CMakeFiles/tosat.dir/ASTNode/SimpBool.cpp.o.provides.build: lib/ToSat/CMakeFiles/tosat.dir/ASTNode/SimpBool.cpp.o

lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ASTtoCNF.cpp.o: lib/ToSat/CMakeFiles/tosat.dir/flags.make
lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ASTtoCNF.cpp.o: ../lib/ToSat/ASTNode/ASTtoCNF.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/l/bap/utils/stp-2.1.2/build/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ASTtoCNF.cpp.o"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/ToSat && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/tosat.dir/ASTNode/ASTtoCNF.cpp.o -c /home/l/bap/utils/stp-2.1.2/lib/ToSat/ASTNode/ASTtoCNF.cpp

lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ASTtoCNF.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tosat.dir/ASTNode/ASTtoCNF.cpp.i"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/ToSat && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/l/bap/utils/stp-2.1.2/lib/ToSat/ASTNode/ASTtoCNF.cpp > CMakeFiles/tosat.dir/ASTNode/ASTtoCNF.cpp.i

lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ASTtoCNF.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tosat.dir/ASTNode/ASTtoCNF.cpp.s"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/ToSat && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/l/bap/utils/stp-2.1.2/lib/ToSat/ASTNode/ASTtoCNF.cpp -o CMakeFiles/tosat.dir/ASTNode/ASTtoCNF.cpp.s

lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ASTtoCNF.cpp.o.requires:
.PHONY : lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ASTtoCNF.cpp.o.requires

lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ASTtoCNF.cpp.o.provides: lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ASTtoCNF.cpp.o.requires
	$(MAKE) -f lib/ToSat/CMakeFiles/tosat.dir/build.make lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ASTtoCNF.cpp.o.provides.build
.PHONY : lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ASTtoCNF.cpp.o.provides

lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ASTtoCNF.cpp.o.provides.build: lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ASTtoCNF.cpp.o

lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ToSAT.cpp.o: lib/ToSat/CMakeFiles/tosat.dir/flags.make
lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ToSAT.cpp.o: ../lib/ToSat/ASTNode/ToSAT.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/l/bap/utils/stp-2.1.2/build/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ToSAT.cpp.o"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/ToSat && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/tosat.dir/ASTNode/ToSAT.cpp.o -c /home/l/bap/utils/stp-2.1.2/lib/ToSat/ASTNode/ToSAT.cpp

lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ToSAT.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tosat.dir/ASTNode/ToSAT.cpp.i"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/ToSat && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/l/bap/utils/stp-2.1.2/lib/ToSat/ASTNode/ToSAT.cpp > CMakeFiles/tosat.dir/ASTNode/ToSAT.cpp.i

lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ToSAT.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tosat.dir/ASTNode/ToSAT.cpp.s"
	cd /home/l/bap/utils/stp-2.1.2/build/lib/ToSat && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/l/bap/utils/stp-2.1.2/lib/ToSat/ASTNode/ToSAT.cpp -o CMakeFiles/tosat.dir/ASTNode/ToSAT.cpp.s

lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ToSAT.cpp.o.requires:
.PHONY : lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ToSAT.cpp.o.requires

lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ToSAT.cpp.o.provides: lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ToSAT.cpp.o.requires
	$(MAKE) -f lib/ToSat/CMakeFiles/tosat.dir/build.make lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ToSAT.cpp.o.provides.build
.PHONY : lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ToSAT.cpp.o.provides

lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ToSAT.cpp.o.provides.build: lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ToSAT.cpp.o

tosat: lib/ToSat/CMakeFiles/tosat.dir/BitBlaster.cpp.o
tosat: lib/ToSat/CMakeFiles/tosat.dir/ToSATBase.cpp.o
tosat: lib/ToSat/CMakeFiles/tosat.dir/AIG/BBNodeManagerAIG.cpp.o
tosat: lib/ToSat/CMakeFiles/tosat.dir/AIG/ToCNFAIG.cpp.o
tosat: lib/ToSat/CMakeFiles/tosat.dir/AIG/ToSATAIG.cpp.o
tosat: lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ClauseList.cpp.o
tosat: lib/ToSat/CMakeFiles/tosat.dir/ASTNode/SimpBool.cpp.o
tosat: lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ASTtoCNF.cpp.o
tosat: lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ToSAT.cpp.o
tosat: lib/ToSat/CMakeFiles/tosat.dir/build.make
.PHONY : tosat

# Rule to build all files generated by this target.
lib/ToSat/CMakeFiles/tosat.dir/build: tosat
.PHONY : lib/ToSat/CMakeFiles/tosat.dir/build

lib/ToSat/CMakeFiles/tosat.dir/requires: lib/ToSat/CMakeFiles/tosat.dir/BitBlaster.cpp.o.requires
lib/ToSat/CMakeFiles/tosat.dir/requires: lib/ToSat/CMakeFiles/tosat.dir/ToSATBase.cpp.o.requires
lib/ToSat/CMakeFiles/tosat.dir/requires: lib/ToSat/CMakeFiles/tosat.dir/AIG/BBNodeManagerAIG.cpp.o.requires
lib/ToSat/CMakeFiles/tosat.dir/requires: lib/ToSat/CMakeFiles/tosat.dir/AIG/ToCNFAIG.cpp.o.requires
lib/ToSat/CMakeFiles/tosat.dir/requires: lib/ToSat/CMakeFiles/tosat.dir/AIG/ToSATAIG.cpp.o.requires
lib/ToSat/CMakeFiles/tosat.dir/requires: lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ClauseList.cpp.o.requires
lib/ToSat/CMakeFiles/tosat.dir/requires: lib/ToSat/CMakeFiles/tosat.dir/ASTNode/SimpBool.cpp.o.requires
lib/ToSat/CMakeFiles/tosat.dir/requires: lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ASTtoCNF.cpp.o.requires
lib/ToSat/CMakeFiles/tosat.dir/requires: lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ToSAT.cpp.o.requires
.PHONY : lib/ToSat/CMakeFiles/tosat.dir/requires

lib/ToSat/CMakeFiles/tosat.dir/clean:
	cd /home/l/bap/utils/stp-2.1.2/build/lib/ToSat && $(CMAKE_COMMAND) -P CMakeFiles/tosat.dir/cmake_clean.cmake
.PHONY : lib/ToSat/CMakeFiles/tosat.dir/clean

lib/ToSat/CMakeFiles/tosat.dir/depend:
	cd /home/l/bap/utils/stp-2.1.2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/l/bap/utils/stp-2.1.2 /home/l/bap/utils/stp-2.1.2/lib/ToSat /home/l/bap/utils/stp-2.1.2/build /home/l/bap/utils/stp-2.1.2/build/lib/ToSat /home/l/bap/utils/stp-2.1.2/build/lib/ToSat/CMakeFiles/tosat.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/ToSat/CMakeFiles/tosat.dir/depend

