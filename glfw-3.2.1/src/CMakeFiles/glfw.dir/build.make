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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/mason/Google Drive/Developer/SimpleShader"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/mason/Google Drive/Developer/SimpleShader"

# Include any dependencies generated for this target.
include glfw-3.2.1/src/CMakeFiles/glfw.dir/depend.make

# Include the progress variables for this target.
include glfw-3.2.1/src/CMakeFiles/glfw.dir/progress.make

# Include the compile flags for this target's objects.
include glfw-3.2.1/src/CMakeFiles/glfw.dir/flags.make

glfw-3.2.1/src/CMakeFiles/glfw.dir/context.c.o: glfw-3.2.1/src/CMakeFiles/glfw.dir/flags.make
glfw-3.2.1/src/CMakeFiles/glfw.dir/context.c.o: glfw-3.2.1/src/context.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mason/Google Drive/Developer/SimpleShader/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object glfw-3.2.1/src/CMakeFiles/glfw.dir/context.c.o"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/context.c.o   -c "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/context.c"

glfw-3.2.1/src/CMakeFiles/glfw.dir/context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/context.c.i"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/context.c" > CMakeFiles/glfw.dir/context.c.i

glfw-3.2.1/src/CMakeFiles/glfw.dir/context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/context.c.s"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/context.c" -o CMakeFiles/glfw.dir/context.c.s

glfw-3.2.1/src/CMakeFiles/glfw.dir/init.c.o: glfw-3.2.1/src/CMakeFiles/glfw.dir/flags.make
glfw-3.2.1/src/CMakeFiles/glfw.dir/init.c.o: glfw-3.2.1/src/init.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mason/Google Drive/Developer/SimpleShader/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object glfw-3.2.1/src/CMakeFiles/glfw.dir/init.c.o"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/init.c.o   -c "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/init.c"

glfw-3.2.1/src/CMakeFiles/glfw.dir/init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/init.c.i"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/init.c" > CMakeFiles/glfw.dir/init.c.i

glfw-3.2.1/src/CMakeFiles/glfw.dir/init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/init.c.s"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/init.c" -o CMakeFiles/glfw.dir/init.c.s

glfw-3.2.1/src/CMakeFiles/glfw.dir/input.c.o: glfw-3.2.1/src/CMakeFiles/glfw.dir/flags.make
glfw-3.2.1/src/CMakeFiles/glfw.dir/input.c.o: glfw-3.2.1/src/input.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mason/Google Drive/Developer/SimpleShader/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building C object glfw-3.2.1/src/CMakeFiles/glfw.dir/input.c.o"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/input.c.o   -c "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/input.c"

glfw-3.2.1/src/CMakeFiles/glfw.dir/input.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/input.c.i"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/input.c" > CMakeFiles/glfw.dir/input.c.i

glfw-3.2.1/src/CMakeFiles/glfw.dir/input.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/input.c.s"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/input.c" -o CMakeFiles/glfw.dir/input.c.s

glfw-3.2.1/src/CMakeFiles/glfw.dir/monitor.c.o: glfw-3.2.1/src/CMakeFiles/glfw.dir/flags.make
glfw-3.2.1/src/CMakeFiles/glfw.dir/monitor.c.o: glfw-3.2.1/src/monitor.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mason/Google Drive/Developer/SimpleShader/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building C object glfw-3.2.1/src/CMakeFiles/glfw.dir/monitor.c.o"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/monitor.c.o   -c "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/monitor.c"

glfw-3.2.1/src/CMakeFiles/glfw.dir/monitor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/monitor.c.i"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/monitor.c" > CMakeFiles/glfw.dir/monitor.c.i

glfw-3.2.1/src/CMakeFiles/glfw.dir/monitor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/monitor.c.s"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/monitor.c" -o CMakeFiles/glfw.dir/monitor.c.s

glfw-3.2.1/src/CMakeFiles/glfw.dir/vulkan.c.o: glfw-3.2.1/src/CMakeFiles/glfw.dir/flags.make
glfw-3.2.1/src/CMakeFiles/glfw.dir/vulkan.c.o: glfw-3.2.1/src/vulkan.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mason/Google Drive/Developer/SimpleShader/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building C object glfw-3.2.1/src/CMakeFiles/glfw.dir/vulkan.c.o"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/vulkan.c.o   -c "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/vulkan.c"

glfw-3.2.1/src/CMakeFiles/glfw.dir/vulkan.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/vulkan.c.i"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/vulkan.c" > CMakeFiles/glfw.dir/vulkan.c.i

glfw-3.2.1/src/CMakeFiles/glfw.dir/vulkan.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/vulkan.c.s"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/vulkan.c" -o CMakeFiles/glfw.dir/vulkan.c.s

glfw-3.2.1/src/CMakeFiles/glfw.dir/window.c.o: glfw-3.2.1/src/CMakeFiles/glfw.dir/flags.make
glfw-3.2.1/src/CMakeFiles/glfw.dir/window.c.o: glfw-3.2.1/src/window.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mason/Google Drive/Developer/SimpleShader/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building C object glfw-3.2.1/src/CMakeFiles/glfw.dir/window.c.o"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/window.c.o   -c "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/window.c"

glfw-3.2.1/src/CMakeFiles/glfw.dir/window.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/window.c.i"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/window.c" > CMakeFiles/glfw.dir/window.c.i

glfw-3.2.1/src/CMakeFiles/glfw.dir/window.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/window.c.s"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/window.c" -o CMakeFiles/glfw.dir/window.c.s

glfw-3.2.1/src/CMakeFiles/glfw.dir/cocoa_init.m.o: glfw-3.2.1/src/CMakeFiles/glfw.dir/flags.make
glfw-3.2.1/src/CMakeFiles/glfw.dir/cocoa_init.m.o: glfw-3.2.1/src/cocoa_init.m
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mason/Google Drive/Developer/SimpleShader/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Building C object glfw-3.2.1/src/CMakeFiles/glfw.dir/cocoa_init.m.o"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/cocoa_init.m.o   -c "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/cocoa_init.m"

glfw-3.2.1/src/CMakeFiles/glfw.dir/cocoa_init.m.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/cocoa_init.m.i"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/cocoa_init.m" > CMakeFiles/glfw.dir/cocoa_init.m.i

glfw-3.2.1/src/CMakeFiles/glfw.dir/cocoa_init.m.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/cocoa_init.m.s"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/cocoa_init.m" -o CMakeFiles/glfw.dir/cocoa_init.m.s

glfw-3.2.1/src/CMakeFiles/glfw.dir/cocoa_joystick.m.o: glfw-3.2.1/src/CMakeFiles/glfw.dir/flags.make
glfw-3.2.1/src/CMakeFiles/glfw.dir/cocoa_joystick.m.o: glfw-3.2.1/src/cocoa_joystick.m
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mason/Google Drive/Developer/SimpleShader/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_8) "Building C object glfw-3.2.1/src/CMakeFiles/glfw.dir/cocoa_joystick.m.o"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/cocoa_joystick.m.o   -c "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/cocoa_joystick.m"

glfw-3.2.1/src/CMakeFiles/glfw.dir/cocoa_joystick.m.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/cocoa_joystick.m.i"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/cocoa_joystick.m" > CMakeFiles/glfw.dir/cocoa_joystick.m.i

glfw-3.2.1/src/CMakeFiles/glfw.dir/cocoa_joystick.m.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/cocoa_joystick.m.s"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/cocoa_joystick.m" -o CMakeFiles/glfw.dir/cocoa_joystick.m.s

glfw-3.2.1/src/CMakeFiles/glfw.dir/cocoa_monitor.m.o: glfw-3.2.1/src/CMakeFiles/glfw.dir/flags.make
glfw-3.2.1/src/CMakeFiles/glfw.dir/cocoa_monitor.m.o: glfw-3.2.1/src/cocoa_monitor.m
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mason/Google Drive/Developer/SimpleShader/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_9) "Building C object glfw-3.2.1/src/CMakeFiles/glfw.dir/cocoa_monitor.m.o"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/cocoa_monitor.m.o   -c "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/cocoa_monitor.m"

glfw-3.2.1/src/CMakeFiles/glfw.dir/cocoa_monitor.m.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/cocoa_monitor.m.i"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/cocoa_monitor.m" > CMakeFiles/glfw.dir/cocoa_monitor.m.i

glfw-3.2.1/src/CMakeFiles/glfw.dir/cocoa_monitor.m.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/cocoa_monitor.m.s"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/cocoa_monitor.m" -o CMakeFiles/glfw.dir/cocoa_monitor.m.s

glfw-3.2.1/src/CMakeFiles/glfw.dir/cocoa_window.m.o: glfw-3.2.1/src/CMakeFiles/glfw.dir/flags.make
glfw-3.2.1/src/CMakeFiles/glfw.dir/cocoa_window.m.o: glfw-3.2.1/src/cocoa_window.m
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mason/Google Drive/Developer/SimpleShader/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_10) "Building C object glfw-3.2.1/src/CMakeFiles/glfw.dir/cocoa_window.m.o"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/cocoa_window.m.o   -c "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/cocoa_window.m"

glfw-3.2.1/src/CMakeFiles/glfw.dir/cocoa_window.m.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/cocoa_window.m.i"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/cocoa_window.m" > CMakeFiles/glfw.dir/cocoa_window.m.i

glfw-3.2.1/src/CMakeFiles/glfw.dir/cocoa_window.m.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/cocoa_window.m.s"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/cocoa_window.m" -o CMakeFiles/glfw.dir/cocoa_window.m.s

glfw-3.2.1/src/CMakeFiles/glfw.dir/cocoa_time.c.o: glfw-3.2.1/src/CMakeFiles/glfw.dir/flags.make
glfw-3.2.1/src/CMakeFiles/glfw.dir/cocoa_time.c.o: glfw-3.2.1/src/cocoa_time.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mason/Google Drive/Developer/SimpleShader/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_11) "Building C object glfw-3.2.1/src/CMakeFiles/glfw.dir/cocoa_time.c.o"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/cocoa_time.c.o   -c "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/cocoa_time.c"

glfw-3.2.1/src/CMakeFiles/glfw.dir/cocoa_time.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/cocoa_time.c.i"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/cocoa_time.c" > CMakeFiles/glfw.dir/cocoa_time.c.i

glfw-3.2.1/src/CMakeFiles/glfw.dir/cocoa_time.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/cocoa_time.c.s"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/cocoa_time.c" -o CMakeFiles/glfw.dir/cocoa_time.c.s

glfw-3.2.1/src/CMakeFiles/glfw.dir/posix_tls.c.o: glfw-3.2.1/src/CMakeFiles/glfw.dir/flags.make
glfw-3.2.1/src/CMakeFiles/glfw.dir/posix_tls.c.o: glfw-3.2.1/src/posix_tls.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mason/Google Drive/Developer/SimpleShader/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_12) "Building C object glfw-3.2.1/src/CMakeFiles/glfw.dir/posix_tls.c.o"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/posix_tls.c.o   -c "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/posix_tls.c"

glfw-3.2.1/src/CMakeFiles/glfw.dir/posix_tls.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/posix_tls.c.i"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/posix_tls.c" > CMakeFiles/glfw.dir/posix_tls.c.i

glfw-3.2.1/src/CMakeFiles/glfw.dir/posix_tls.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/posix_tls.c.s"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/posix_tls.c" -o CMakeFiles/glfw.dir/posix_tls.c.s

glfw-3.2.1/src/CMakeFiles/glfw.dir/nsgl_context.m.o: glfw-3.2.1/src/CMakeFiles/glfw.dir/flags.make
glfw-3.2.1/src/CMakeFiles/glfw.dir/nsgl_context.m.o: glfw-3.2.1/src/nsgl_context.m
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/mason/Google Drive/Developer/SimpleShader/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_13) "Building C object glfw-3.2.1/src/CMakeFiles/glfw.dir/nsgl_context.m.o"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw.dir/nsgl_context.m.o   -c "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/nsgl_context.m"

glfw-3.2.1/src/CMakeFiles/glfw.dir/nsgl_context.m.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/nsgl_context.m.i"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/nsgl_context.m" > CMakeFiles/glfw.dir/nsgl_context.m.i

glfw-3.2.1/src/CMakeFiles/glfw.dir/nsgl_context.m.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/nsgl_context.m.s"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/nsgl_context.m" -o CMakeFiles/glfw.dir/nsgl_context.m.s

# Object files for target glfw
glfw_OBJECTS = \
"CMakeFiles/glfw.dir/context.c.o" \
"CMakeFiles/glfw.dir/init.c.o" \
"CMakeFiles/glfw.dir/input.c.o" \
"CMakeFiles/glfw.dir/monitor.c.o" \
"CMakeFiles/glfw.dir/vulkan.c.o" \
"CMakeFiles/glfw.dir/window.c.o" \
"CMakeFiles/glfw.dir/cocoa_init.m.o" \
"CMakeFiles/glfw.dir/cocoa_joystick.m.o" \
"CMakeFiles/glfw.dir/cocoa_monitor.m.o" \
"CMakeFiles/glfw.dir/cocoa_window.m.o" \
"CMakeFiles/glfw.dir/cocoa_time.c.o" \
"CMakeFiles/glfw.dir/posix_tls.c.o" \
"CMakeFiles/glfw.dir/nsgl_context.m.o"

# External object files for target glfw
glfw_EXTERNAL_OBJECTS =

glfw-3.2.1/src/libglfw3.a: glfw-3.2.1/src/CMakeFiles/glfw.dir/context.c.o
glfw-3.2.1/src/libglfw3.a: glfw-3.2.1/src/CMakeFiles/glfw.dir/init.c.o
glfw-3.2.1/src/libglfw3.a: glfw-3.2.1/src/CMakeFiles/glfw.dir/input.c.o
glfw-3.2.1/src/libglfw3.a: glfw-3.2.1/src/CMakeFiles/glfw.dir/monitor.c.o
glfw-3.2.1/src/libglfw3.a: glfw-3.2.1/src/CMakeFiles/glfw.dir/vulkan.c.o
glfw-3.2.1/src/libglfw3.a: glfw-3.2.1/src/CMakeFiles/glfw.dir/window.c.o
glfw-3.2.1/src/libglfw3.a: glfw-3.2.1/src/CMakeFiles/glfw.dir/cocoa_init.m.o
glfw-3.2.1/src/libglfw3.a: glfw-3.2.1/src/CMakeFiles/glfw.dir/cocoa_joystick.m.o
glfw-3.2.1/src/libglfw3.a: glfw-3.2.1/src/CMakeFiles/glfw.dir/cocoa_monitor.m.o
glfw-3.2.1/src/libglfw3.a: glfw-3.2.1/src/CMakeFiles/glfw.dir/cocoa_window.m.o
glfw-3.2.1/src/libglfw3.a: glfw-3.2.1/src/CMakeFiles/glfw.dir/cocoa_time.c.o
glfw-3.2.1/src/libglfw3.a: glfw-3.2.1/src/CMakeFiles/glfw.dir/posix_tls.c.o
glfw-3.2.1/src/libglfw3.a: glfw-3.2.1/src/CMakeFiles/glfw.dir/nsgl_context.m.o
glfw-3.2.1/src/libglfw3.a: glfw-3.2.1/src/CMakeFiles/glfw.dir/build.make
glfw-3.2.1/src/libglfw3.a: glfw-3.2.1/src/CMakeFiles/glfw.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/mason/Google Drive/Developer/SimpleShader/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_14) "Linking C static library libglfw3.a"
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && $(CMAKE_COMMAND) -P CMakeFiles/glfw.dir/cmake_clean_target.cmake
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/glfw.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
glfw-3.2.1/src/CMakeFiles/glfw.dir/build: glfw-3.2.1/src/libglfw3.a

.PHONY : glfw-3.2.1/src/CMakeFiles/glfw.dir/build

glfw-3.2.1/src/CMakeFiles/glfw.dir/clean:
	cd "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" && $(CMAKE_COMMAND) -P CMakeFiles/glfw.dir/cmake_clean.cmake
.PHONY : glfw-3.2.1/src/CMakeFiles/glfw.dir/clean

glfw-3.2.1/src/CMakeFiles/glfw.dir/depend:
	cd "/Users/mason/Google Drive/Developer/SimpleShader" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/mason/Google Drive/Developer/SimpleShader" "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" "/Users/mason/Google Drive/Developer/SimpleShader" "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src" "/Users/mason/Google Drive/Developer/SimpleShader/glfw-3.2.1/src/CMakeFiles/glfw.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : glfw-3.2.1/src/CMakeFiles/glfw.dir/depend

