# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/revolux/Desktop/monero/xmrMiner

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/revolux/Desktop/monero/xmrMiner/build

# Include any dependencies generated for this target.
include CMakeFiles/xmrMinerCrypto.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/xmrMinerCrypto.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/xmrMinerCrypto.dir/flags.make

CMakeFiles/xmrMinerCrypto.dir/crypto/c_blake256.c.o: CMakeFiles/xmrMinerCrypto.dir/flags.make
CMakeFiles/xmrMinerCrypto.dir/crypto/c_blake256.c.o: ../crypto/c_blake256.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/revolux/Desktop/monero/xmrMiner/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/xmrMinerCrypto.dir/crypto/c_blake256.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/xmrMinerCrypto.dir/crypto/c_blake256.c.o   -c /home/revolux/Desktop/monero/xmrMiner/crypto/c_blake256.c

CMakeFiles/xmrMinerCrypto.dir/crypto/c_blake256.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/xmrMinerCrypto.dir/crypto/c_blake256.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/revolux/Desktop/monero/xmrMiner/crypto/c_blake256.c > CMakeFiles/xmrMinerCrypto.dir/crypto/c_blake256.c.i

CMakeFiles/xmrMinerCrypto.dir/crypto/c_blake256.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/xmrMinerCrypto.dir/crypto/c_blake256.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/revolux/Desktop/monero/xmrMiner/crypto/c_blake256.c -o CMakeFiles/xmrMinerCrypto.dir/crypto/c_blake256.c.s

CMakeFiles/xmrMinerCrypto.dir/crypto/c_blake256.c.o.requires:

.PHONY : CMakeFiles/xmrMinerCrypto.dir/crypto/c_blake256.c.o.requires

CMakeFiles/xmrMinerCrypto.dir/crypto/c_blake256.c.o.provides: CMakeFiles/xmrMinerCrypto.dir/crypto/c_blake256.c.o.requires
	$(MAKE) -f CMakeFiles/xmrMinerCrypto.dir/build.make CMakeFiles/xmrMinerCrypto.dir/crypto/c_blake256.c.o.provides.build
.PHONY : CMakeFiles/xmrMinerCrypto.dir/crypto/c_blake256.c.o.provides

CMakeFiles/xmrMinerCrypto.dir/crypto/c_blake256.c.o.provides.build: CMakeFiles/xmrMinerCrypto.dir/crypto/c_blake256.c.o


CMakeFiles/xmrMinerCrypto.dir/crypto/c_jh.c.o: CMakeFiles/xmrMinerCrypto.dir/flags.make
CMakeFiles/xmrMinerCrypto.dir/crypto/c_jh.c.o: ../crypto/c_jh.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/revolux/Desktop/monero/xmrMiner/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/xmrMinerCrypto.dir/crypto/c_jh.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/xmrMinerCrypto.dir/crypto/c_jh.c.o   -c /home/revolux/Desktop/monero/xmrMiner/crypto/c_jh.c

CMakeFiles/xmrMinerCrypto.dir/crypto/c_jh.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/xmrMinerCrypto.dir/crypto/c_jh.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/revolux/Desktop/monero/xmrMiner/crypto/c_jh.c > CMakeFiles/xmrMinerCrypto.dir/crypto/c_jh.c.i

CMakeFiles/xmrMinerCrypto.dir/crypto/c_jh.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/xmrMinerCrypto.dir/crypto/c_jh.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/revolux/Desktop/monero/xmrMiner/crypto/c_jh.c -o CMakeFiles/xmrMinerCrypto.dir/crypto/c_jh.c.s

CMakeFiles/xmrMinerCrypto.dir/crypto/c_jh.c.o.requires:

.PHONY : CMakeFiles/xmrMinerCrypto.dir/crypto/c_jh.c.o.requires

CMakeFiles/xmrMinerCrypto.dir/crypto/c_jh.c.o.provides: CMakeFiles/xmrMinerCrypto.dir/crypto/c_jh.c.o.requires
	$(MAKE) -f CMakeFiles/xmrMinerCrypto.dir/build.make CMakeFiles/xmrMinerCrypto.dir/crypto/c_jh.c.o.provides.build
.PHONY : CMakeFiles/xmrMinerCrypto.dir/crypto/c_jh.c.o.provides

CMakeFiles/xmrMinerCrypto.dir/crypto/c_jh.c.o.provides.build: CMakeFiles/xmrMinerCrypto.dir/crypto/c_jh.c.o


CMakeFiles/xmrMinerCrypto.dir/crypto/oaes_lib.c.o: CMakeFiles/xmrMinerCrypto.dir/flags.make
CMakeFiles/xmrMinerCrypto.dir/crypto/oaes_lib.c.o: ../crypto/oaes_lib.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/revolux/Desktop/monero/xmrMiner/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/xmrMinerCrypto.dir/crypto/oaes_lib.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/xmrMinerCrypto.dir/crypto/oaes_lib.c.o   -c /home/revolux/Desktop/monero/xmrMiner/crypto/oaes_lib.c

CMakeFiles/xmrMinerCrypto.dir/crypto/oaes_lib.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/xmrMinerCrypto.dir/crypto/oaes_lib.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/revolux/Desktop/monero/xmrMiner/crypto/oaes_lib.c > CMakeFiles/xmrMinerCrypto.dir/crypto/oaes_lib.c.i

CMakeFiles/xmrMinerCrypto.dir/crypto/oaes_lib.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/xmrMinerCrypto.dir/crypto/oaes_lib.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/revolux/Desktop/monero/xmrMiner/crypto/oaes_lib.c -o CMakeFiles/xmrMinerCrypto.dir/crypto/oaes_lib.c.s

CMakeFiles/xmrMinerCrypto.dir/crypto/oaes_lib.c.o.requires:

.PHONY : CMakeFiles/xmrMinerCrypto.dir/crypto/oaes_lib.c.o.requires

CMakeFiles/xmrMinerCrypto.dir/crypto/oaes_lib.c.o.provides: CMakeFiles/xmrMinerCrypto.dir/crypto/oaes_lib.c.o.requires
	$(MAKE) -f CMakeFiles/xmrMinerCrypto.dir/build.make CMakeFiles/xmrMinerCrypto.dir/crypto/oaes_lib.c.o.provides.build
.PHONY : CMakeFiles/xmrMinerCrypto.dir/crypto/oaes_lib.c.o.provides

CMakeFiles/xmrMinerCrypto.dir/crypto/oaes_lib.c.o.provides.build: CMakeFiles/xmrMinerCrypto.dir/crypto/oaes_lib.c.o


CMakeFiles/xmrMinerCrypto.dir/crypto/c_groestl.c.o: CMakeFiles/xmrMinerCrypto.dir/flags.make
CMakeFiles/xmrMinerCrypto.dir/crypto/c_groestl.c.o: ../crypto/c_groestl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/revolux/Desktop/monero/xmrMiner/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/xmrMinerCrypto.dir/crypto/c_groestl.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/xmrMinerCrypto.dir/crypto/c_groestl.c.o   -c /home/revolux/Desktop/monero/xmrMiner/crypto/c_groestl.c

CMakeFiles/xmrMinerCrypto.dir/crypto/c_groestl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/xmrMinerCrypto.dir/crypto/c_groestl.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/revolux/Desktop/monero/xmrMiner/crypto/c_groestl.c > CMakeFiles/xmrMinerCrypto.dir/crypto/c_groestl.c.i

CMakeFiles/xmrMinerCrypto.dir/crypto/c_groestl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/xmrMinerCrypto.dir/crypto/c_groestl.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/revolux/Desktop/monero/xmrMiner/crypto/c_groestl.c -o CMakeFiles/xmrMinerCrypto.dir/crypto/c_groestl.c.s

CMakeFiles/xmrMinerCrypto.dir/crypto/c_groestl.c.o.requires:

.PHONY : CMakeFiles/xmrMinerCrypto.dir/crypto/c_groestl.c.o.requires

CMakeFiles/xmrMinerCrypto.dir/crypto/c_groestl.c.o.provides: CMakeFiles/xmrMinerCrypto.dir/crypto/c_groestl.c.o.requires
	$(MAKE) -f CMakeFiles/xmrMinerCrypto.dir/build.make CMakeFiles/xmrMinerCrypto.dir/crypto/c_groestl.c.o.provides.build
.PHONY : CMakeFiles/xmrMinerCrypto.dir/crypto/c_groestl.c.o.provides

CMakeFiles/xmrMinerCrypto.dir/crypto/c_groestl.c.o.provides.build: CMakeFiles/xmrMinerCrypto.dir/crypto/c_groestl.c.o


CMakeFiles/xmrMinerCrypto.dir/crypto/c_keccak.c.o: CMakeFiles/xmrMinerCrypto.dir/flags.make
CMakeFiles/xmrMinerCrypto.dir/crypto/c_keccak.c.o: ../crypto/c_keccak.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/revolux/Desktop/monero/xmrMiner/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/xmrMinerCrypto.dir/crypto/c_keccak.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/xmrMinerCrypto.dir/crypto/c_keccak.c.o   -c /home/revolux/Desktop/monero/xmrMiner/crypto/c_keccak.c

CMakeFiles/xmrMinerCrypto.dir/crypto/c_keccak.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/xmrMinerCrypto.dir/crypto/c_keccak.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/revolux/Desktop/monero/xmrMiner/crypto/c_keccak.c > CMakeFiles/xmrMinerCrypto.dir/crypto/c_keccak.c.i

CMakeFiles/xmrMinerCrypto.dir/crypto/c_keccak.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/xmrMinerCrypto.dir/crypto/c_keccak.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/revolux/Desktop/monero/xmrMiner/crypto/c_keccak.c -o CMakeFiles/xmrMinerCrypto.dir/crypto/c_keccak.c.s

CMakeFiles/xmrMinerCrypto.dir/crypto/c_keccak.c.o.requires:

.PHONY : CMakeFiles/xmrMinerCrypto.dir/crypto/c_keccak.c.o.requires

CMakeFiles/xmrMinerCrypto.dir/crypto/c_keccak.c.o.provides: CMakeFiles/xmrMinerCrypto.dir/crypto/c_keccak.c.o.requires
	$(MAKE) -f CMakeFiles/xmrMinerCrypto.dir/build.make CMakeFiles/xmrMinerCrypto.dir/crypto/c_keccak.c.o.provides.build
.PHONY : CMakeFiles/xmrMinerCrypto.dir/crypto/c_keccak.c.o.provides

CMakeFiles/xmrMinerCrypto.dir/crypto/c_keccak.c.o.provides.build: CMakeFiles/xmrMinerCrypto.dir/crypto/c_keccak.c.o


CMakeFiles/xmrMinerCrypto.dir/crypto/aesb.c.o: CMakeFiles/xmrMinerCrypto.dir/flags.make
CMakeFiles/xmrMinerCrypto.dir/crypto/aesb.c.o: ../crypto/aesb.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/revolux/Desktop/monero/xmrMiner/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/xmrMinerCrypto.dir/crypto/aesb.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/xmrMinerCrypto.dir/crypto/aesb.c.o   -c /home/revolux/Desktop/monero/xmrMiner/crypto/aesb.c

CMakeFiles/xmrMinerCrypto.dir/crypto/aesb.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/xmrMinerCrypto.dir/crypto/aesb.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/revolux/Desktop/monero/xmrMiner/crypto/aesb.c > CMakeFiles/xmrMinerCrypto.dir/crypto/aesb.c.i

CMakeFiles/xmrMinerCrypto.dir/crypto/aesb.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/xmrMinerCrypto.dir/crypto/aesb.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/revolux/Desktop/monero/xmrMiner/crypto/aesb.c -o CMakeFiles/xmrMinerCrypto.dir/crypto/aesb.c.s

CMakeFiles/xmrMinerCrypto.dir/crypto/aesb.c.o.requires:

.PHONY : CMakeFiles/xmrMinerCrypto.dir/crypto/aesb.c.o.requires

CMakeFiles/xmrMinerCrypto.dir/crypto/aesb.c.o.provides: CMakeFiles/xmrMinerCrypto.dir/crypto/aesb.c.o.requires
	$(MAKE) -f CMakeFiles/xmrMinerCrypto.dir/build.make CMakeFiles/xmrMinerCrypto.dir/crypto/aesb.c.o.provides.build
.PHONY : CMakeFiles/xmrMinerCrypto.dir/crypto/aesb.c.o.provides

CMakeFiles/xmrMinerCrypto.dir/crypto/aesb.c.o.provides.build: CMakeFiles/xmrMinerCrypto.dir/crypto/aesb.c.o


CMakeFiles/xmrMinerCrypto.dir/crypto/c_skein.c.o: CMakeFiles/xmrMinerCrypto.dir/flags.make
CMakeFiles/xmrMinerCrypto.dir/crypto/c_skein.c.o: ../crypto/c_skein.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/revolux/Desktop/monero/xmrMiner/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/xmrMinerCrypto.dir/crypto/c_skein.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/xmrMinerCrypto.dir/crypto/c_skein.c.o   -c /home/revolux/Desktop/monero/xmrMiner/crypto/c_skein.c

CMakeFiles/xmrMinerCrypto.dir/crypto/c_skein.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/xmrMinerCrypto.dir/crypto/c_skein.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/revolux/Desktop/monero/xmrMiner/crypto/c_skein.c > CMakeFiles/xmrMinerCrypto.dir/crypto/c_skein.c.i

CMakeFiles/xmrMinerCrypto.dir/crypto/c_skein.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/xmrMinerCrypto.dir/crypto/c_skein.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/revolux/Desktop/monero/xmrMiner/crypto/c_skein.c -o CMakeFiles/xmrMinerCrypto.dir/crypto/c_skein.c.s

CMakeFiles/xmrMinerCrypto.dir/crypto/c_skein.c.o.requires:

.PHONY : CMakeFiles/xmrMinerCrypto.dir/crypto/c_skein.c.o.requires

CMakeFiles/xmrMinerCrypto.dir/crypto/c_skein.c.o.provides: CMakeFiles/xmrMinerCrypto.dir/crypto/c_skein.c.o.requires
	$(MAKE) -f CMakeFiles/xmrMinerCrypto.dir/build.make CMakeFiles/xmrMinerCrypto.dir/crypto/c_skein.c.o.provides.build
.PHONY : CMakeFiles/xmrMinerCrypto.dir/crypto/c_skein.c.o.provides

CMakeFiles/xmrMinerCrypto.dir/crypto/c_skein.c.o.provides.build: CMakeFiles/xmrMinerCrypto.dir/crypto/c_skein.c.o


# Object files for target xmrMinerCrypto
xmrMinerCrypto_OBJECTS = \
"CMakeFiles/xmrMinerCrypto.dir/crypto/c_blake256.c.o" \
"CMakeFiles/xmrMinerCrypto.dir/crypto/c_jh.c.o" \
"CMakeFiles/xmrMinerCrypto.dir/crypto/oaes_lib.c.o" \
"CMakeFiles/xmrMinerCrypto.dir/crypto/c_groestl.c.o" \
"CMakeFiles/xmrMinerCrypto.dir/crypto/c_keccak.c.o" \
"CMakeFiles/xmrMinerCrypto.dir/crypto/aesb.c.o" \
"CMakeFiles/xmrMinerCrypto.dir/crypto/c_skein.c.o"

# External object files for target xmrMinerCrypto
xmrMinerCrypto_EXTERNAL_OBJECTS =

libxmrMinerCrypto.a: CMakeFiles/xmrMinerCrypto.dir/crypto/c_blake256.c.o
libxmrMinerCrypto.a: CMakeFiles/xmrMinerCrypto.dir/crypto/c_jh.c.o
libxmrMinerCrypto.a: CMakeFiles/xmrMinerCrypto.dir/crypto/oaes_lib.c.o
libxmrMinerCrypto.a: CMakeFiles/xmrMinerCrypto.dir/crypto/c_groestl.c.o
libxmrMinerCrypto.a: CMakeFiles/xmrMinerCrypto.dir/crypto/c_keccak.c.o
libxmrMinerCrypto.a: CMakeFiles/xmrMinerCrypto.dir/crypto/aesb.c.o
libxmrMinerCrypto.a: CMakeFiles/xmrMinerCrypto.dir/crypto/c_skein.c.o
libxmrMinerCrypto.a: CMakeFiles/xmrMinerCrypto.dir/build.make
libxmrMinerCrypto.a: CMakeFiles/xmrMinerCrypto.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/revolux/Desktop/monero/xmrMiner/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking C static library libxmrMinerCrypto.a"
	$(CMAKE_COMMAND) -P CMakeFiles/xmrMinerCrypto.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/xmrMinerCrypto.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/xmrMinerCrypto.dir/build: libxmrMinerCrypto.a

.PHONY : CMakeFiles/xmrMinerCrypto.dir/build

CMakeFiles/xmrMinerCrypto.dir/requires: CMakeFiles/xmrMinerCrypto.dir/crypto/c_blake256.c.o.requires
CMakeFiles/xmrMinerCrypto.dir/requires: CMakeFiles/xmrMinerCrypto.dir/crypto/c_jh.c.o.requires
CMakeFiles/xmrMinerCrypto.dir/requires: CMakeFiles/xmrMinerCrypto.dir/crypto/oaes_lib.c.o.requires
CMakeFiles/xmrMinerCrypto.dir/requires: CMakeFiles/xmrMinerCrypto.dir/crypto/c_groestl.c.o.requires
CMakeFiles/xmrMinerCrypto.dir/requires: CMakeFiles/xmrMinerCrypto.dir/crypto/c_keccak.c.o.requires
CMakeFiles/xmrMinerCrypto.dir/requires: CMakeFiles/xmrMinerCrypto.dir/crypto/aesb.c.o.requires
CMakeFiles/xmrMinerCrypto.dir/requires: CMakeFiles/xmrMinerCrypto.dir/crypto/c_skein.c.o.requires

.PHONY : CMakeFiles/xmrMinerCrypto.dir/requires

CMakeFiles/xmrMinerCrypto.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/xmrMinerCrypto.dir/cmake_clean.cmake
.PHONY : CMakeFiles/xmrMinerCrypto.dir/clean

CMakeFiles/xmrMinerCrypto.dir/depend:
	cd /home/revolux/Desktop/monero/xmrMiner/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/revolux/Desktop/monero/xmrMiner /home/revolux/Desktop/monero/xmrMiner /home/revolux/Desktop/monero/xmrMiner/build /home/revolux/Desktop/monero/xmrMiner/build /home/revolux/Desktop/monero/xmrMiner/build/CMakeFiles/xmrMinerCrypto.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/xmrMinerCrypto.dir/depend
