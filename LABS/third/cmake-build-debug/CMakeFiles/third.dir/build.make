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
CMAKE_SOURCE_DIR = "/home/iskander/Desktop/УЧЕБА/ИТМО/SECOND SEM/PROGRAMMING/LABS/third"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/iskander/Desktop/УЧЕБА/ИТМО/SECOND SEM/PROGRAMMING/LABS/third/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/third.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/third.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/third.dir/flags.make

CMakeFiles/third.dir/main.cpp.o: CMakeFiles/third.dir/flags.make
CMakeFiles/third.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/iskander/Desktop/УЧЕБА/ИТМО/SECOND SEM/PROGRAMMING/LABS/third/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/third.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/third.dir/main.cpp.o -c "/home/iskander/Desktop/УЧЕБА/ИТМО/SECOND SEM/PROGRAMMING/LABS/third/main.cpp"

CMakeFiles/third.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/third.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/iskander/Desktop/УЧЕБА/ИТМО/SECOND SEM/PROGRAMMING/LABS/third/main.cpp" > CMakeFiles/third.dir/main.cpp.i

CMakeFiles/third.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/third.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/iskander/Desktop/УЧЕБА/ИТМО/SECOND SEM/PROGRAMMING/LABS/third/main.cpp" -o CMakeFiles/third.dir/main.cpp.s

CMakeFiles/third.dir/pugixml.cpp.o: CMakeFiles/third.dir/flags.make
CMakeFiles/third.dir/pugixml.cpp.o: ../pugixml.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/iskander/Desktop/УЧЕБА/ИТМО/SECOND SEM/PROGRAMMING/LABS/third/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/third.dir/pugixml.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/third.dir/pugixml.cpp.o -c "/home/iskander/Desktop/УЧЕБА/ИТМО/SECOND SEM/PROGRAMMING/LABS/third/pugixml.cpp"

CMakeFiles/third.dir/pugixml.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/third.dir/pugixml.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/iskander/Desktop/УЧЕБА/ИТМО/SECOND SEM/PROGRAMMING/LABS/third/pugixml.cpp" > CMakeFiles/third.dir/pugixml.cpp.i

CMakeFiles/third.dir/pugixml.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/third.dir/pugixml.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/iskander/Desktop/УЧЕБА/ИТМО/SECOND SEM/PROGRAMMING/LABS/third/pugixml.cpp" -o CMakeFiles/third.dir/pugixml.cpp.s

# Object files for target third
third_OBJECTS = \
"CMakeFiles/third.dir/main.cpp.o" \
"CMakeFiles/third.dir/pugixml.cpp.o"

# External object files for target third
third_EXTERNAL_OBJECTS =

third: CMakeFiles/third.dir/main.cpp.o
third: CMakeFiles/third.dir/pugixml.cpp.o
third: CMakeFiles/third.dir/build.make
third: CMakeFiles/third.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/iskander/Desktop/УЧЕБА/ИТМО/SECOND SEM/PROGRAMMING/LABS/third/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable third"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/third.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/third.dir/build: third

.PHONY : CMakeFiles/third.dir/build

CMakeFiles/third.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/third.dir/cmake_clean.cmake
.PHONY : CMakeFiles/third.dir/clean

CMakeFiles/third.dir/depend:
	cd "/home/iskander/Desktop/УЧЕБА/ИТМО/SECOND SEM/PROGRAMMING/LABS/third/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/iskander/Desktop/УЧЕБА/ИТМО/SECOND SEM/PROGRAMMING/LABS/third" "/home/iskander/Desktop/УЧЕБА/ИТМО/SECOND SEM/PROGRAMMING/LABS/third" "/home/iskander/Desktop/УЧЕБА/ИТМО/SECOND SEM/PROGRAMMING/LABS/third/cmake-build-debug" "/home/iskander/Desktop/УЧЕБА/ИТМО/SECOND SEM/PROGRAMMING/LABS/third/cmake-build-debug" "/home/iskander/Desktop/УЧЕБА/ИТМО/SECOND SEM/PROGRAMMING/LABS/third/cmake-build-debug/CMakeFiles/third.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/third.dir/depend

