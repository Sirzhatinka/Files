# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


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

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.1.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.1.1\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = E:\CLionproj\Trainexes\Files

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\CLionproj\Trainexes\Files\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles\Files.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\Files.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\Files.dir\flags.make

CMakeFiles\Files.dir\main.cpp.obj: CMakeFiles\Files.dir\flags.make
CMakeFiles\Files.dir\main.cpp.obj: ..\main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\CLionproj\Trainexes\Files\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Files.dir/main.cpp.obj"
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\Files.dir\main.cpp.obj /FdCMakeFiles\Files.dir\ /FS -c E:\CLionproj\Trainexes\Files\main.cpp
<<

CMakeFiles\Files.dir\main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Files.dir/main.cpp.i"
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe > CMakeFiles\Files.dir\main.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\CLionproj\Trainexes\Files\main.cpp
<<

CMakeFiles\Files.dir\main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Files.dir/main.cpp.s"
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\Files.dir\main.cpp.s /c E:\CLionproj\Trainexes\Files\main.cpp
<<

CMakeFiles\Files.dir\Person.cpp.obj: CMakeFiles\Files.dir\flags.make
CMakeFiles\Files.dir\Person.cpp.obj: ..\Person.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\CLionproj\Trainexes\Files\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Files.dir/Person.cpp.obj"
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\Files.dir\Person.cpp.obj /FdCMakeFiles\Files.dir\ /FS -c E:\CLionproj\Trainexes\Files\Person.cpp
<<

CMakeFiles\Files.dir\Person.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Files.dir/Person.cpp.i"
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe > CMakeFiles\Files.dir\Person.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\CLionproj\Trainexes\Files\Person.cpp
<<

CMakeFiles\Files.dir\Person.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Files.dir/Person.cpp.s"
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\Files.dir\Person.cpp.s /c E:\CLionproj\Trainexes\Files\Person.cpp
<<

CMakeFiles\Files.dir\implementation.cpp.obj: CMakeFiles\Files.dir\flags.make
CMakeFiles\Files.dir\implementation.cpp.obj: ..\implementation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\CLionproj\Trainexes\Files\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Files.dir/implementation.cpp.obj"
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\Files.dir\implementation.cpp.obj /FdCMakeFiles\Files.dir\ /FS -c E:\CLionproj\Trainexes\Files\implementation.cpp
<<

CMakeFiles\Files.dir\implementation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Files.dir/implementation.cpp.i"
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe > CMakeFiles\Files.dir\implementation.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\CLionproj\Trainexes\Files\implementation.cpp
<<

CMakeFiles\Files.dir\implementation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Files.dir/implementation.cpp.s"
	C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\Files.dir\implementation.cpp.s /c E:\CLionproj\Trainexes\Files\implementation.cpp
<<

# Object files for target Files
Files_OBJECTS = \
"CMakeFiles\Files.dir\main.cpp.obj" \
"CMakeFiles\Files.dir\Person.cpp.obj" \
"CMakeFiles\Files.dir\implementation.cpp.obj"

# External object files for target Files
Files_EXTERNAL_OBJECTS =

Files.exe: CMakeFiles\Files.dir\main.cpp.obj
Files.exe: CMakeFiles\Files.dir\Person.cpp.obj
Files.exe: CMakeFiles\Files.dir\implementation.cpp.obj
Files.exe: CMakeFiles\Files.dir\build.make
Files.exe: CMakeFiles\Files.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\CLionproj\Trainexes\Files\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable Files.exe"
	"C:\Program Files\JetBrains\CLion 2020.1.1\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\Files.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100177~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100177~1.0\x86\mt.exe --manifests  -- C:\PROGRA~2\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\Files.dir\objects1.rsp @<<
 /out:Files.exe /implib:Files.lib /pdb:E:\CLionproj\Trainexes\Files\cmake-build-debug\Files.pdb /version:0.0  /machine:X86 /debug /INCREMENTAL /subsystem:console  kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\Files.dir\build: Files.exe

.PHONY : CMakeFiles\Files.dir\build

CMakeFiles\Files.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Files.dir\cmake_clean.cmake
.PHONY : CMakeFiles\Files.dir\clean

CMakeFiles\Files.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" E:\CLionproj\Trainexes\Files E:\CLionproj\Trainexes\Files E:\CLionproj\Trainexes\Files\cmake-build-debug E:\CLionproj\Trainexes\Files\cmake-build-debug E:\CLionproj\Trainexes\Files\cmake-build-debug\CMakeFiles\Files.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\Files.dir\depend

