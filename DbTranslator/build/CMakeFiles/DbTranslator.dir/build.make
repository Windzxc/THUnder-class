# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\THU\Lessons\1B\Cpp\THUnder\src\DbTranslator

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\THU\Lessons\1B\Cpp\THUnder\src\DbTranslator\build

# Include any dependencies generated for this target.
include CMakeFiles/DbTranslator.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/DbTranslator.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/DbTranslator.dir/flags.make

CMakeFiles/DbTranslator.dir/dbtranslator.cpp.obj: CMakeFiles/DbTranslator.dir/flags.make
CMakeFiles/DbTranslator.dir/dbtranslator.cpp.obj: ../dbtranslator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\THU\Lessons\1B\Cpp\THUnder\src\DbTranslator\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/DbTranslator.dir/dbtranslator.cpp.obj"
	C:\PROGRA~1\mingw-w64\x86_64-8.1.0-win32-seh-rt_v6-rev0\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\DbTranslator.dir\dbtranslator.cpp.obj -c D:\THU\Lessons\1B\Cpp\THUnder\src\DbTranslator\dbtranslator.cpp

CMakeFiles/DbTranslator.dir/dbtranslator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DbTranslator.dir/dbtranslator.cpp.i"
	C:\PROGRA~1\mingw-w64\x86_64-8.1.0-win32-seh-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\THU\Lessons\1B\Cpp\THUnder\src\DbTranslator\dbtranslator.cpp > CMakeFiles\DbTranslator.dir\dbtranslator.cpp.i

CMakeFiles/DbTranslator.dir/dbtranslator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DbTranslator.dir/dbtranslator.cpp.s"
	C:\PROGRA~1\mingw-w64\x86_64-8.1.0-win32-seh-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\THU\Lessons\1B\Cpp\THUnder\src\DbTranslator\dbtranslator.cpp -o CMakeFiles\DbTranslator.dir\dbtranslator.cpp.s

CMakeFiles/DbTranslator.dir/sqlite/sqlite3.c.obj: CMakeFiles/DbTranslator.dir/flags.make
CMakeFiles/DbTranslator.dir/sqlite/sqlite3.c.obj: ../sqlite/sqlite3.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\THU\Lessons\1B\Cpp\THUnder\src\DbTranslator\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/DbTranslator.dir/sqlite/sqlite3.c.obj"
	C:\PROGRA~1\mingw-w64\x86_64-8.1.0-win32-seh-rt_v6-rev0\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\DbTranslator.dir\sqlite\sqlite3.c.obj   -c D:\THU\Lessons\1B\Cpp\THUnder\src\DbTranslator\sqlite\sqlite3.c

CMakeFiles/DbTranslator.dir/sqlite/sqlite3.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/DbTranslator.dir/sqlite/sqlite3.c.i"
	C:\PROGRA~1\mingw-w64\x86_64-8.1.0-win32-seh-rt_v6-rev0\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\THU\Lessons\1B\Cpp\THUnder\src\DbTranslator\sqlite\sqlite3.c > CMakeFiles\DbTranslator.dir\sqlite\sqlite3.c.i

CMakeFiles/DbTranslator.dir/sqlite/sqlite3.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/DbTranslator.dir/sqlite/sqlite3.c.s"
	C:\PROGRA~1\mingw-w64\x86_64-8.1.0-win32-seh-rt_v6-rev0\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\THU\Lessons\1B\Cpp\THUnder\src\DbTranslator\sqlite\sqlite3.c -o CMakeFiles\DbTranslator.dir\sqlite\sqlite3.c.s

# Object files for target DbTranslator
DbTranslator_OBJECTS = \
"CMakeFiles/DbTranslator.dir/dbtranslator.cpp.obj" \
"CMakeFiles/DbTranslator.dir/sqlite/sqlite3.c.obj"

# External object files for target DbTranslator
DbTranslator_EXTERNAL_OBJECTS =

DbTranslator.exe: CMakeFiles/DbTranslator.dir/dbtranslator.cpp.obj
DbTranslator.exe: CMakeFiles/DbTranslator.dir/sqlite/sqlite3.c.obj
DbTranslator.exe: CMakeFiles/DbTranslator.dir/build.make
DbTranslator.exe: CMakeFiles/DbTranslator.dir/linklibs.rsp
DbTranslator.exe: CMakeFiles/DbTranslator.dir/objects1.rsp
DbTranslator.exe: CMakeFiles/DbTranslator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\THU\Lessons\1B\Cpp\THUnder\src\DbTranslator\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable DbTranslator.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\DbTranslator.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/DbTranslator.dir/build: DbTranslator.exe

.PHONY : CMakeFiles/DbTranslator.dir/build

CMakeFiles/DbTranslator.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\DbTranslator.dir\cmake_clean.cmake
.PHONY : CMakeFiles/DbTranslator.dir/clean

CMakeFiles/DbTranslator.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\THU\Lessons\1B\Cpp\THUnder\src\DbTranslator D:\THU\Lessons\1B\Cpp\THUnder\src\DbTranslator D:\THU\Lessons\1B\Cpp\THUnder\src\DbTranslator\build D:\THU\Lessons\1B\Cpp\THUnder\src\DbTranslator\build D:\THU\Lessons\1B\Cpp\THUnder\src\DbTranslator\build\CMakeFiles\DbTranslator.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/DbTranslator.dir/depend

