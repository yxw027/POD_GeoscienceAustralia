# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_COMMAND = /home/geodesy/cmake-3.16.3-Linux-x86_64/bin/cmake

# The command to remove a file.
RM = /home/geodesy/cmake-3.16.3-Linux-x86_64/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /data/thomas3/pod

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /data/thomas3/pod/build

# Include any dependencies generated for this target.
include CMakeFiles/boxwing.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/boxwing.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/boxwing.dir/flags.make

CMakeFiles/boxwing.dir/src/BOXWINIT.f90.o: CMakeFiles/boxwing.dir/flags.make
CMakeFiles/boxwing.dir/src/BOXWINIT.f90.o: ../src/BOXWINIT.f90
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/thomas3/pod/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building Fortran object CMakeFiles/boxwing.dir/src/BOXWINIT.f90.o"
	/usr/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /data/thomas3/pod/src/BOXWINIT.f90 -o CMakeFiles/boxwing.dir/src/BOXWINIT.f90.o

CMakeFiles/boxwing.dir/src/BOXWINIT.f90.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/boxwing.dir/src/BOXWINIT.f90.i"
	/usr/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /data/thomas3/pod/src/BOXWINIT.f90 > CMakeFiles/boxwing.dir/src/BOXWINIT.f90.i

CMakeFiles/boxwing.dir/src/BOXWINIT.f90.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/boxwing.dir/src/BOXWINIT.f90.s"
	/usr/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /data/thomas3/pod/src/BOXWINIT.f90 -o CMakeFiles/boxwing.dir/src/BOXWINIT.f90.s

CMakeFiles/boxwing.dir/src/ERPFBOXW.f90.o: CMakeFiles/boxwing.dir/flags.make
CMakeFiles/boxwing.dir/src/ERPFBOXW.f90.o: ../src/ERPFBOXW.f90
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/thomas3/pod/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building Fortran object CMakeFiles/boxwing.dir/src/ERPFBOXW.f90.o"
	/usr/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /data/thomas3/pod/src/ERPFBOXW.f90 -o CMakeFiles/boxwing.dir/src/ERPFBOXW.f90.o

CMakeFiles/boxwing.dir/src/ERPFBOXW.f90.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/boxwing.dir/src/ERPFBOXW.f90.i"
	/usr/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /data/thomas3/pod/src/ERPFBOXW.f90 > CMakeFiles/boxwing.dir/src/ERPFBOXW.f90.i

CMakeFiles/boxwing.dir/src/ERPFBOXW.f90.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/boxwing.dir/src/ERPFBOXW.f90.s"
	/usr/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /data/thomas3/pod/src/ERPFBOXW.f90 -o CMakeFiles/boxwing.dir/src/ERPFBOXW.f90.s

CMakeFiles/boxwing.dir/src/SURFBOXW.f.o: CMakeFiles/boxwing.dir/flags.make
CMakeFiles/boxwing.dir/src/SURFBOXW.f.o: ../src/SURFBOXW.f
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/thomas3/pod/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building Fortran object CMakeFiles/boxwing.dir/src/SURFBOXW.f.o"
	/usr/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /data/thomas3/pod/src/SURFBOXW.f -o CMakeFiles/boxwing.dir/src/SURFBOXW.f.o

CMakeFiles/boxwing.dir/src/SURFBOXW.f.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/boxwing.dir/src/SURFBOXW.f.i"
	/usr/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /data/thomas3/pod/src/SURFBOXW.f > CMakeFiles/boxwing.dir/src/SURFBOXW.f.i

CMakeFiles/boxwing.dir/src/SURFBOXW.f.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/boxwing.dir/src/SURFBOXW.f.s"
	/usr/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /data/thomas3/pod/src/SURFBOXW.f -o CMakeFiles/boxwing.dir/src/SURFBOXW.f.s

CMakeFiles/boxwing.dir/src/PROPBOXW.f.o: CMakeFiles/boxwing.dir/flags.make
CMakeFiles/boxwing.dir/src/PROPBOXW.f.o: ../src/PROPBOXW.f
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/thomas3/pod/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building Fortran object CMakeFiles/boxwing.dir/src/PROPBOXW.f.o"
	/usr/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /data/thomas3/pod/src/PROPBOXW.f -o CMakeFiles/boxwing.dir/src/PROPBOXW.f.o

CMakeFiles/boxwing.dir/src/PROPBOXW.f.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/boxwing.dir/src/PROPBOXW.f.i"
	/usr/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /data/thomas3/pod/src/PROPBOXW.f > CMakeFiles/boxwing.dir/src/PROPBOXW.f.i

CMakeFiles/boxwing.dir/src/PROPBOXW.f.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/boxwing.dir/src/PROPBOXW.f.s"
	/usr/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /data/thomas3/pod/src/PROPBOXW.f -o CMakeFiles/boxwing.dir/src/PROPBOXW.f.s

CMakeFiles/boxwing.dir/src/SRPFBOXW.f90.o: CMakeFiles/boxwing.dir/flags.make
CMakeFiles/boxwing.dir/src/SRPFBOXW.f90.o: ../src/SRPFBOXW.f90
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/thomas3/pod/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building Fortran object CMakeFiles/boxwing.dir/src/SRPFBOXW.f90.o"
	/usr/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /data/thomas3/pod/src/SRPFBOXW.f90 -o CMakeFiles/boxwing.dir/src/SRPFBOXW.f90.o

CMakeFiles/boxwing.dir/src/SRPFBOXW.f90.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/boxwing.dir/src/SRPFBOXW.f90.i"
	/usr/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /data/thomas3/pod/src/SRPFBOXW.f90 > CMakeFiles/boxwing.dir/src/SRPFBOXW.f90.i

CMakeFiles/boxwing.dir/src/SRPFBOXW.f90.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/boxwing.dir/src/SRPFBOXW.f90.s"
	/usr/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /data/thomas3/pod/src/SRPFBOXW.f90 -o CMakeFiles/boxwing.dir/src/SRPFBOXW.f90.s

# Object files for target boxwing
boxwing_OBJECTS = \
"CMakeFiles/boxwing.dir/src/BOXWINIT.f90.o" \
"CMakeFiles/boxwing.dir/src/ERPFBOXW.f90.o" \
"CMakeFiles/boxwing.dir/src/SURFBOXW.f.o" \
"CMakeFiles/boxwing.dir/src/PROPBOXW.f.o" \
"CMakeFiles/boxwing.dir/src/SRPFBOXW.f90.o"

# External object files for target boxwing
boxwing_EXTERNAL_OBJECTS =

../lib/libboxwing.a: CMakeFiles/boxwing.dir/src/BOXWINIT.f90.o
../lib/libboxwing.a: CMakeFiles/boxwing.dir/src/ERPFBOXW.f90.o
../lib/libboxwing.a: CMakeFiles/boxwing.dir/src/SURFBOXW.f.o
../lib/libboxwing.a: CMakeFiles/boxwing.dir/src/PROPBOXW.f.o
../lib/libboxwing.a: CMakeFiles/boxwing.dir/src/SRPFBOXW.f90.o
../lib/libboxwing.a: CMakeFiles/boxwing.dir/build.make
../lib/libboxwing.a: CMakeFiles/boxwing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/data/thomas3/pod/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking Fortran static library ../lib/libboxwing.a"
	$(CMAKE_COMMAND) -P CMakeFiles/boxwing.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/boxwing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/boxwing.dir/build: ../lib/libboxwing.a

.PHONY : CMakeFiles/boxwing.dir/build

CMakeFiles/boxwing.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/boxwing.dir/cmake_clean.cmake
.PHONY : CMakeFiles/boxwing.dir/clean

CMakeFiles/boxwing.dir/depend:
	cd /data/thomas3/pod/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /data/thomas3/pod /data/thomas3/pod /data/thomas3/pod/build /data/thomas3/pod/build /data/thomas3/pod/build/CMakeFiles/boxwing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/boxwing.dir/depend

