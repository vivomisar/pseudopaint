# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vivomisar/Documents/code/Pseudopaint

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vivomisar/Documents/code/build-Pseudopaint-Desktop-Debug

# Include any dependencies generated for this target.
include CMakeFiles/Pseudopaint.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Pseudopaint.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Pseudopaint.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Pseudopaint.dir/flags.make

CMakeFiles/Pseudopaint.dir/Pseudopaint_autogen/mocs_compilation.cpp.o: CMakeFiles/Pseudopaint.dir/flags.make
CMakeFiles/Pseudopaint.dir/Pseudopaint_autogen/mocs_compilation.cpp.o: Pseudopaint_autogen/mocs_compilation.cpp
CMakeFiles/Pseudopaint.dir/Pseudopaint_autogen/mocs_compilation.cpp.o: CMakeFiles/Pseudopaint.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/vivomisar/Documents/code/build-Pseudopaint-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Pseudopaint.dir/Pseudopaint_autogen/mocs_compilation.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Pseudopaint.dir/Pseudopaint_autogen/mocs_compilation.cpp.o -MF CMakeFiles/Pseudopaint.dir/Pseudopaint_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/Pseudopaint.dir/Pseudopaint_autogen/mocs_compilation.cpp.o -c /home/vivomisar/Documents/code/build-Pseudopaint-Desktop-Debug/Pseudopaint_autogen/mocs_compilation.cpp

CMakeFiles/Pseudopaint.dir/Pseudopaint_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Pseudopaint.dir/Pseudopaint_autogen/mocs_compilation.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vivomisar/Documents/code/build-Pseudopaint-Desktop-Debug/Pseudopaint_autogen/mocs_compilation.cpp > CMakeFiles/Pseudopaint.dir/Pseudopaint_autogen/mocs_compilation.cpp.i

CMakeFiles/Pseudopaint.dir/Pseudopaint_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Pseudopaint.dir/Pseudopaint_autogen/mocs_compilation.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vivomisar/Documents/code/build-Pseudopaint-Desktop-Debug/Pseudopaint_autogen/mocs_compilation.cpp -o CMakeFiles/Pseudopaint.dir/Pseudopaint_autogen/mocs_compilation.cpp.s

CMakeFiles/Pseudopaint.dir/main.cpp.o: CMakeFiles/Pseudopaint.dir/flags.make
CMakeFiles/Pseudopaint.dir/main.cpp.o: /home/vivomisar/Documents/code/Pseudopaint/main.cpp
CMakeFiles/Pseudopaint.dir/main.cpp.o: CMakeFiles/Pseudopaint.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/vivomisar/Documents/code/build-Pseudopaint-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Pseudopaint.dir/main.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Pseudopaint.dir/main.cpp.o -MF CMakeFiles/Pseudopaint.dir/main.cpp.o.d -o CMakeFiles/Pseudopaint.dir/main.cpp.o -c /home/vivomisar/Documents/code/Pseudopaint/main.cpp

CMakeFiles/Pseudopaint.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Pseudopaint.dir/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vivomisar/Documents/code/Pseudopaint/main.cpp > CMakeFiles/Pseudopaint.dir/main.cpp.i

CMakeFiles/Pseudopaint.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Pseudopaint.dir/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vivomisar/Documents/code/Pseudopaint/main.cpp -o CMakeFiles/Pseudopaint.dir/main.cpp.s

CMakeFiles/Pseudopaint.dir/mainwindow.cpp.o: CMakeFiles/Pseudopaint.dir/flags.make
CMakeFiles/Pseudopaint.dir/mainwindow.cpp.o: /home/vivomisar/Documents/code/Pseudopaint/mainwindow.cpp
CMakeFiles/Pseudopaint.dir/mainwindow.cpp.o: CMakeFiles/Pseudopaint.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/vivomisar/Documents/code/build-Pseudopaint-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Pseudopaint.dir/mainwindow.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Pseudopaint.dir/mainwindow.cpp.o -MF CMakeFiles/Pseudopaint.dir/mainwindow.cpp.o.d -o CMakeFiles/Pseudopaint.dir/mainwindow.cpp.o -c /home/vivomisar/Documents/code/Pseudopaint/mainwindow.cpp

CMakeFiles/Pseudopaint.dir/mainwindow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Pseudopaint.dir/mainwindow.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vivomisar/Documents/code/Pseudopaint/mainwindow.cpp > CMakeFiles/Pseudopaint.dir/mainwindow.cpp.i

CMakeFiles/Pseudopaint.dir/mainwindow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Pseudopaint.dir/mainwindow.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vivomisar/Documents/code/Pseudopaint/mainwindow.cpp -o CMakeFiles/Pseudopaint.dir/mainwindow.cpp.s

# Object files for target Pseudopaint
Pseudopaint_OBJECTS = \
"CMakeFiles/Pseudopaint.dir/Pseudopaint_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/Pseudopaint.dir/main.cpp.o" \
"CMakeFiles/Pseudopaint.dir/mainwindow.cpp.o"

# External object files for target Pseudopaint
Pseudopaint_EXTERNAL_OBJECTS =

Pseudopaint: CMakeFiles/Pseudopaint.dir/Pseudopaint_autogen/mocs_compilation.cpp.o
Pseudopaint: CMakeFiles/Pseudopaint.dir/main.cpp.o
Pseudopaint: CMakeFiles/Pseudopaint.dir/mainwindow.cpp.o
Pseudopaint: CMakeFiles/Pseudopaint.dir/build.make
Pseudopaint: /usr/lib/libQt6Widgets.so.6.5.3
Pseudopaint: /usr/lib/libQt6Gui.so.6.5.3
Pseudopaint: /usr/lib/libQt6Core.so.6.5.3
Pseudopaint: /usr/lib/libGLX.so
Pseudopaint: /usr/lib/libOpenGL.so
Pseudopaint: CMakeFiles/Pseudopaint.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/vivomisar/Documents/code/build-Pseudopaint-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable Pseudopaint"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Pseudopaint.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Pseudopaint.dir/build: Pseudopaint
.PHONY : CMakeFiles/Pseudopaint.dir/build

CMakeFiles/Pseudopaint.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Pseudopaint.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Pseudopaint.dir/clean

CMakeFiles/Pseudopaint.dir/depend:
	cd /home/vivomisar/Documents/code/build-Pseudopaint-Desktop-Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vivomisar/Documents/code/Pseudopaint /home/vivomisar/Documents/code/Pseudopaint /home/vivomisar/Documents/code/build-Pseudopaint-Desktop-Debug /home/vivomisar/Documents/code/build-Pseudopaint-Desktop-Debug /home/vivomisar/Documents/code/build-Pseudopaint-Desktop-Debug/CMakeFiles/Pseudopaint.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Pseudopaint.dir/depend

