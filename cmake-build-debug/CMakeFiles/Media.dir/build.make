# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = F:\Installs\apps\CLion\ch-0\181.4668.70\bin\cmake\bin\cmake.exe

# The command to remove a file.
RM = F:\Installs\apps\CLion\ch-0\181.4668.70\bin\cmake\bin\cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = F:\C++\Projects\Media

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = F:\C++\Projects\Media\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Media.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Media.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Media.dir/flags.make

CMakeFiles/Media.dir/main.cpp.obj: CMakeFiles/Media.dir/flags.make
CMakeFiles/Media.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:\C++\Projects\Media\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Media.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Media.dir\main.cpp.obj -c F:\C++\Projects\Media\main.cpp

CMakeFiles/Media.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Media.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E F:\C++\Projects\Media\main.cpp > CMakeFiles\Media.dir\main.cpp.i

CMakeFiles/Media.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Media.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S F:\C++\Projects\Media\main.cpp -o CMakeFiles\Media.dir\main.cpp.s

CMakeFiles/Media.dir/main.cpp.obj.requires:

.PHONY : CMakeFiles/Media.dir/main.cpp.obj.requires

CMakeFiles/Media.dir/main.cpp.obj.provides: CMakeFiles/Media.dir/main.cpp.obj.requires
	$(MAKE) -f CMakeFiles\Media.dir\build.make CMakeFiles/Media.dir/main.cpp.obj.provides.build
.PHONY : CMakeFiles/Media.dir/main.cpp.obj.provides

CMakeFiles/Media.dir/main.cpp.obj.provides.build: CMakeFiles/Media.dir/main.cpp.obj


# Object files for target Media
Media_OBJECTS = \
"CMakeFiles/Media.dir/main.cpp.obj"

# External object files for target Media
Media_EXTERNAL_OBJECTS =

Media.exe: CMakeFiles/Media.dir/main.cpp.obj
Media.exe: CMakeFiles/Media.dir/build.make
Media.exe: CMakeFiles/Media.dir/linklibs.rsp
Media.exe: CMakeFiles/Media.dir/objects1.rsp
Media.exe: CMakeFiles/Media.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=F:\C++\Projects\Media\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Media.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Media.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Media.dir/build: Media.exe

.PHONY : CMakeFiles/Media.dir/build

CMakeFiles/Media.dir/requires: CMakeFiles/Media.dir/main.cpp.obj.requires

.PHONY : CMakeFiles/Media.dir/requires

CMakeFiles/Media.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Media.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Media.dir/clean

CMakeFiles/Media.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" F:\C++\Projects\Media F:\C++\Projects\Media F:\C++\Projects\Media\cmake-build-debug F:\C++\Projects\Media\cmake-build-debug F:\C++\Projects\Media\cmake-build-debug\CMakeFiles\Media.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Media.dir/depend
