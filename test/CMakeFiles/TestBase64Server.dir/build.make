# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.6

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/chris/workspace/xmlrpc

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/chris/workspace/xmlrpc

# Include any dependencies generated for this target.
include test/CMakeFiles/TestBase64Server.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/TestBase64Server.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/TestBase64Server.dir/flags.make

test/CMakeFiles/TestBase64Server.dir/TestBase64Server.cpp.o: test/CMakeFiles/TestBase64Server.dir/flags.make
test/CMakeFiles/TestBase64Server.dir/TestBase64Server.cpp.o: test/TestBase64Server.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/chris/workspace/xmlrpc/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/TestBase64Server.dir/TestBase64Server.cpp.o"
	cd /home/chris/workspace/xmlrpc/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/TestBase64Server.dir/TestBase64Server.cpp.o -c /home/chris/workspace/xmlrpc/test/TestBase64Server.cpp

test/CMakeFiles/TestBase64Server.dir/TestBase64Server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestBase64Server.dir/TestBase64Server.cpp.i"
	cd /home/chris/workspace/xmlrpc/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/chris/workspace/xmlrpc/test/TestBase64Server.cpp > CMakeFiles/TestBase64Server.dir/TestBase64Server.cpp.i

test/CMakeFiles/TestBase64Server.dir/TestBase64Server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestBase64Server.dir/TestBase64Server.cpp.s"
	cd /home/chris/workspace/xmlrpc/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/chris/workspace/xmlrpc/test/TestBase64Server.cpp -o CMakeFiles/TestBase64Server.dir/TestBase64Server.cpp.s

test/CMakeFiles/TestBase64Server.dir/TestBase64Server.cpp.o.requires:
.PHONY : test/CMakeFiles/TestBase64Server.dir/TestBase64Server.cpp.o.requires

test/CMakeFiles/TestBase64Server.dir/TestBase64Server.cpp.o.provides: test/CMakeFiles/TestBase64Server.dir/TestBase64Server.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/TestBase64Server.dir/build.make test/CMakeFiles/TestBase64Server.dir/TestBase64Server.cpp.o.provides.build
.PHONY : test/CMakeFiles/TestBase64Server.dir/TestBase64Server.cpp.o.provides

test/CMakeFiles/TestBase64Server.dir/TestBase64Server.cpp.o.provides.build: test/CMakeFiles/TestBase64Server.dir/TestBase64Server.cpp.o
.PHONY : test/CMakeFiles/TestBase64Server.dir/TestBase64Server.cpp.o.provides.build

# Object files for target TestBase64Server
TestBase64Server_OBJECTS = \
"CMakeFiles/TestBase64Server.dir/TestBase64Server.cpp.o"

# External object files for target TestBase64Server
TestBase64Server_EXTERNAL_OBJECTS =

bin/TestBase64Server: test/CMakeFiles/TestBase64Server.dir/TestBase64Server.cpp.o
bin/TestBase64Server: lib/libXmlRpc.a
bin/TestBase64Server: test/CMakeFiles/TestBase64Server.dir/build.make
bin/TestBase64Server: test/CMakeFiles/TestBase64Server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/TestBase64Server"
	cd /home/chris/workspace/xmlrpc/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TestBase64Server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/TestBase64Server.dir/build: bin/TestBase64Server
.PHONY : test/CMakeFiles/TestBase64Server.dir/build

test/CMakeFiles/TestBase64Server.dir/requires: test/CMakeFiles/TestBase64Server.dir/TestBase64Server.cpp.o.requires
.PHONY : test/CMakeFiles/TestBase64Server.dir/requires

test/CMakeFiles/TestBase64Server.dir/clean:
	cd /home/chris/workspace/xmlrpc/test && $(CMAKE_COMMAND) -P CMakeFiles/TestBase64Server.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/TestBase64Server.dir/clean

test/CMakeFiles/TestBase64Server.dir/depend:
	cd /home/chris/workspace/xmlrpc && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chris/workspace/xmlrpc /home/chris/workspace/xmlrpc/test /home/chris/workspace/xmlrpc /home/chris/workspace/xmlrpc/test /home/chris/workspace/xmlrpc/test/CMakeFiles/TestBase64Server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/TestBase64Server.dir/depend
