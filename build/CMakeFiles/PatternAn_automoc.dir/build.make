# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.6

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
CMAKE_COMMAND = "Y:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "Y:\Program Files\CMake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Olga\Desktop\PatternAn

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Olga\Desktop\PatternAn\build

# Utility rule file for PatternAn_automoc.

# Include the progress variables for this target.
include CMakeFiles/PatternAn_automoc.dir/progress.make

CMakeFiles/PatternAn_automoc:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Users\Olga\Desktop\PatternAn\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic moc for target PatternAn"
	"Y:\Program Files\CMake\bin\cmake.exe" -E cmake_autogen C:/Users/Olga/Desktop/PatternAn/build/CMakeFiles/PatternAn_automoc.dir/ ""

PatternAn_automoc: CMakeFiles/PatternAn_automoc
PatternAn_automoc: CMakeFiles/PatternAn_automoc.dir/build.make

.PHONY : PatternAn_automoc

# Rule to build all files generated by this target.
CMakeFiles/PatternAn_automoc.dir/build: PatternAn_automoc

.PHONY : CMakeFiles/PatternAn_automoc.dir/build

CMakeFiles/PatternAn_automoc.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\PatternAn_automoc.dir\cmake_clean.cmake
.PHONY : CMakeFiles/PatternAn_automoc.dir/clean

CMakeFiles/PatternAn_automoc.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Olga\Desktop\PatternAn C:\Users\Olga\Desktop\PatternAn C:\Users\Olga\Desktop\PatternAn\build C:\Users\Olga\Desktop\PatternAn\build C:\Users\Olga\Desktop\PatternAn\build\CMakeFiles\PatternAn_automoc.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/PatternAn_automoc.dir/depend

