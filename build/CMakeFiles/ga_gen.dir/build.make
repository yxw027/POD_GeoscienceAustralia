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
include CMakeFiles/ga_gen.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ga_gen.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ga_gen.dir/flags.make

CMakeFiles/ga_gen.dir/src/doy2str.f03.o: CMakeFiles/ga_gen.dir/flags.make
CMakeFiles/ga_gen.dir/src/doy2str.f03.o: ../src/doy2str.f03
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/thomas3/pod/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building Fortran object CMakeFiles/ga_gen.dir/src/doy2str.f03.o"
	/usr/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /data/thomas3/pod/src/doy2str.f03 -o CMakeFiles/ga_gen.dir/src/doy2str.f03.o

CMakeFiles/ga_gen.dir/src/doy2str.f03.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/ga_gen.dir/src/doy2str.f03.i"
	/usr/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /data/thomas3/pod/src/doy2str.f03 > CMakeFiles/ga_gen.dir/src/doy2str.f03.i

CMakeFiles/ga_gen.dir/src/doy2str.f03.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/ga_gen.dir/src/doy2str.f03.s"
	/usr/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /data/thomas3/pod/src/doy2str.f03 -o CMakeFiles/ga_gen.dir/src/doy2str.f03.s

CMakeFiles/ga_gen.dir/src/f90getopt.F90.o: CMakeFiles/ga_gen.dir/flags.make
CMakeFiles/ga_gen.dir/src/f90getopt.F90.o: ../src/f90getopt.F90
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/thomas3/pod/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building Fortran object CMakeFiles/ga_gen.dir/src/f90getopt.F90.o"
	/usr/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /data/thomas3/pod/src/f90getopt.F90 -o CMakeFiles/ga_gen.dir/src/f90getopt.F90.o

CMakeFiles/ga_gen.dir/src/f90getopt.F90.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/ga_gen.dir/src/f90getopt.F90.i"
	/usr/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /data/thomas3/pod/src/f90getopt.F90 > CMakeFiles/ga_gen.dir/src/f90getopt.F90.i

CMakeFiles/ga_gen.dir/src/f90getopt.F90.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/ga_gen.dir/src/f90getopt.F90.s"
	/usr/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /data/thomas3/pod/src/f90getopt.F90 -o CMakeFiles/ga_gen.dir/src/f90getopt.F90.s

CMakeFiles/ga_gen.dir/src/read_cmdline.f03.o: CMakeFiles/ga_gen.dir/flags.make
CMakeFiles/ga_gen.dir/src/read_cmdline.f03.o: ../src/read_cmdline.f03
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/thomas3/pod/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building Fortran object CMakeFiles/ga_gen.dir/src/read_cmdline.f03.o"
	/usr/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /data/thomas3/pod/src/read_cmdline.f03 -o CMakeFiles/ga_gen.dir/src/read_cmdline.f03.o

CMakeFiles/ga_gen.dir/src/read_cmdline.f03.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/ga_gen.dir/src/read_cmdline.f03.i"
	/usr/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /data/thomas3/pod/src/read_cmdline.f03 > CMakeFiles/ga_gen.dir/src/read_cmdline.f03.i

CMakeFiles/ga_gen.dir/src/read_cmdline.f03.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/ga_gen.dir/src/read_cmdline.f03.s"
	/usr/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /data/thomas3/pod/src/read_cmdline.f03 -o CMakeFiles/ga_gen.dir/src/read_cmdline.f03.s

# Object files for target ga_gen
ga_gen_OBJECTS = \
"CMakeFiles/ga_gen.dir/src/doy2str.f03.o" \
"CMakeFiles/ga_gen.dir/src/f90getopt.F90.o" \
"CMakeFiles/ga_gen.dir/src/read_cmdline.f03.o"

# External object files for target ga_gen
ga_gen_EXTERNAL_OBJECTS =

../lib/libga_gen.a: CMakeFiles/ga_gen.dir/src/doy2str.f03.o
../lib/libga_gen.a: CMakeFiles/ga_gen.dir/src/f90getopt.F90.o
../lib/libga_gen.a: CMakeFiles/ga_gen.dir/src/read_cmdline.f03.o
../lib/libga_gen.a: CMakeFiles/ga_gen.dir/build.make
../lib/libga_gen.a: CMakeFiles/ga_gen.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/data/thomas3/pod/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking Fortran static library ../lib/libga_gen.a"
	$(CMAKE_COMMAND) -P CMakeFiles/ga_gen.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ga_gen.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ga_gen.dir/build: ../lib/libga_gen.a

.PHONY : CMakeFiles/ga_gen.dir/build

CMakeFiles/ga_gen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ga_gen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ga_gen.dir/clean

CMakeFiles/ga_gen.dir/depend:
	cd /data/thomas3/pod/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /data/thomas3/pod /data/thomas3/pod /data/thomas3/pod/build /data/thomas3/pod/build /data/thomas3/pod/build/CMakeFiles/ga_gen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ga_gen.dir/depend

