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
include test/CMakeFiles/TestEGroupwareSSLClient.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/TestEGroupwareSSLClient.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/TestEGroupwareSSLClient.dir/flags.make

test/CMakeFiles/TestEGroupwareSSLClient.dir/TestEGroupwareSSLClient.cpp.o: test/CMakeFiles/TestEGroupwareSSLClient.dir/flags.make
test/CMakeFiles/TestEGroupwareSSLClient.dir/TestEGroupwareSSLClient.cpp.o: test/TestEGroupwareSSLClient.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/chris/workspace/xmlrpc/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/TestEGroupwareSSLClient.dir/TestEGroupwareSSLClient.cpp.o"
	cd /home/chris/workspace/xmlrpc/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/TestEGroupwareSSLClient.dir/TestEGroupwareSSLClient.cpp.o -c /home/chris/workspace/xmlrpc/test/TestEGroupwareSSLClient.cpp

test/CMakeFiles/TestEGroupwareSSLClient.dir/TestEGroupwareSSLClient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestEGroupwareSSLClient.dir/TestEGroupwareSSLClient.cpp.i"
	cd /home/chris/workspace/xmlrpc/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/chris/workspace/xmlrpc/test/TestEGroupwareSSLClient.cpp > CMakeFiles/TestEGroupwareSSLClient.dir/TestEGroupwareSSLClient.cpp.i

test/CMakeFiles/TestEGroupwareSSLClient.dir/TestEGroupwareSSLClient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestEGroupwareSSLClient.dir/TestEGroupwareSSLClient.cpp.s"
	cd /home/chris/workspace/xmlrpc/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/chris/workspace/xmlrpc/test/TestEGroupwareSSLClient.cpp -o CMakeFiles/TestEGroupwareSSLClient.dir/TestEGroupwareSSLClient.cpp.s

test/CMakeFiles/TestEGroupwareSSLClient.dir/TestEGroupwareSSLClient.cpp.o.requires:
.PHONY : test/CMakeFiles/TestEGroupwareSSLClient.dir/TestEGroupwareSSLClient.cpp.o.requires

test/CMakeFiles/TestEGroupwareSSLClient.dir/TestEGroupwareSSLClient.cpp.o.provides: test/CMakeFiles/TestEGroupwareSSLClient.dir/TestEGroupwareSSLClient.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/TestEGroupwareSSLClient.dir/build.make test/CMakeFiles/TestEGroupwareSSLClient.dir/TestEGroupwareSSLClient.cpp.o.provides.build
.PHONY : test/CMakeFiles/TestEGroupwareSSLClient.dir/TestEGroupwareSSLClient.cpp.o.provides

test/CMakeFiles/TestEGroupwareSSLClient.dir/TestEGroupwareSSLClient.cpp.o.provides.build: test/CMakeFiles/TestEGroupwareSSLClient.dir/TestEGroupwareSSLClient.cpp.o
.PHONY : test/CMakeFiles/TestEGroupwareSSLClient.dir/TestEGroupwareSSLClient.cpp.o.provides.build

# Object files for target TestEGroupwareSSLClient
TestEGroupwareSSLClient_OBJECTS = \
"CMakeFiles/TestEGroupwareSSLClient.dir/TestEGroupwareSSLClient.cpp.o"

# External object files for target TestEGroupwareSSLClient
TestEGroupwareSSLClient_EXTERNAL_OBJECTS =

bin/TestEGroupwareSSLClient: test/CMakeFiles/TestEGroupwareSSLClient.dir/TestEGroupwareSSLClient.cpp.o
bin/TestEGroupwareSSLClient: lib/libXmlRpc.a
bin/TestEGroupwareSSLClient: test/CMakeFiles/TestEGroupwareSSLClient.dir/build.make
bin/TestEGroupwareSSLClient: test/CMakeFiles/TestEGroupwareSSLClient.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/TestEGroupwareSSLClient"
	cd /home/chris/workspace/xmlrpc/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TestEGroupwareSSLClient.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/TestEGroupwareSSLClient.dir/build: bin/TestEGroupwareSSLClient
.PHONY : test/CMakeFiles/TestEGroupwareSSLClient.dir/build

test/CMakeFiles/TestEGroupwareSSLClient.dir/requires: test/CMakeFiles/TestEGroupwareSSLClient.dir/TestEGroupwareSSLClient.cpp.o.requires
.PHONY : test/CMakeFiles/TestEGroupwareSSLClient.dir/requires

test/CMakeFiles/TestEGroupwareSSLClient.dir/clean:
	cd /home/chris/workspace/xmlrpc/test && $(CMAKE_COMMAND) -P CMakeFiles/TestEGroupwareSSLClient.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/TestEGroupwareSSLClient.dir/clean

test/CMakeFiles/TestEGroupwareSSLClient.dir/depend:
	cd /home/chris/workspace/xmlrpc && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chris/workspace/xmlrpc /home/chris/workspace/xmlrpc/test /home/chris/workspace/xmlrpc /home/chris/workspace/xmlrpc/test /home/chris/workspace/xmlrpc/test/CMakeFiles/TestEGroupwareSSLClient.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/TestEGroupwareSSLClient.dir/depend
