# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
CMAKE_COMMAND = /snap/clion/145/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/145/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/iskander/Desktop/УЧЕБА/ИТМО/SECOND SEM/PROGRAMMING/LABS/first"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/iskander/Desktop/УЧЕБА/ИТМО/SECOND SEM/PROGRAMMING/LABS/first/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/first.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/first.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/first.dir/flags.make

CMakeFiles/first.dir/main.cpp.o: CMakeFiles/first.dir/flags.make
CMakeFiles/first.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/iskander/Desktop/УЧЕБА/ИТМО/SECOND SEM/PROGRAMMING/LABS/first/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/first.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/first.dir/main.cpp.o -c "/home/iskander/Desktop/УЧЕБА/ИТМО/SECOND SEM/PROGRAMMING/LABS/first/main.cpp"

CMakeFiles/first.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/first.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/iskander/Desktop/УЧЕБА/ИТМО/SECOND SEM/PROGRAMMING/LABS/first/main.cpp" > CMakeFiles/first.dir/main.cpp.i

CMakeFiles/first.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/first.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/iskander/Desktop/УЧЕБА/ИТМО/SECOND SEM/PROGRAMMING/LABS/first/main.cpp" -o CMakeFiles/first.dir/main.cpp.s

# Object files for target first
first_OBJECTS = \
"CMakeFiles/first.dir/main.cpp.o"

# External object files for target first
first_EXTERNAL_OBJECTS =

first: CMakeFiles/first.dir/main.cpp.o
first: CMakeFiles/first.dir/build.make
first: CMakeFiles/first.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/iskander/Desktop/УЧЕБА/ИТМО/SECOND SEM/PROGRAMMING/LABS/first/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable first"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/first.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/first.dir/build: first

.PHONY : CMakeFiles/first.dir/build

CMakeFiles/first.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/first.dir/cmake_clean.cmake
.PHONY : CMakeFiles/first.dir/clean

CMakeFiles/first.dir/depend:
	cd "/home/iskander/Desktop/УЧЕБА/ИТМО/SECOND SEM/PROGRAMMING/LABS/first/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/iskander/Desktop/УЧЕБА/ИТМО/SECOND SEM/PROGRAMMING/LABS/first" "/home/iskander/Desktop/УЧЕБА/ИТМО/SECOND SEM/PROGRAMMING/LABS/first" "/home/iskander/Desktop/УЧЕБА/ИТМО/SECOND SEM/PROGRAMMING/LABS/first/cmake-build-debug" "/home/iskander/Desktop/УЧЕБА/ИТМО/SECOND SEM/PROGRAMMING/LABS/first/cmake-build-debug" "/home/iskander/Desktop/УЧЕБА/ИТМО/SECOND SEM/PROGRAMMING/LABS/first/cmake-build-debug/CMakeFiles/first.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/first.dir/depend

