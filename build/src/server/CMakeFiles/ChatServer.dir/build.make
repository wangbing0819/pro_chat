# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = /usr/local/cmake/bin/cmake

# The command to remove a file.
RM = /usr/local/cmake/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/www/project/project_chat

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/www/project/project_chat/build

# Include any dependencies generated for this target.
include src/server/CMakeFiles/ChatServer.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/server/CMakeFiles/ChatServer.dir/compiler_depend.make

# Include the progress variables for this target.
include src/server/CMakeFiles/ChatServer.dir/progress.make

# Include the compile flags for this target's objects.
include src/server/CMakeFiles/ChatServer.dir/flags.make

src/server/CMakeFiles/ChatServer.dir/app/chat_conf.cpp.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/app/chat_conf.cpp.o: /home/www/project/project_chat/src/server/app/chat_conf.cpp
src/server/CMakeFiles/ChatServer.dir/app/chat_conf.cpp.o: src/server/CMakeFiles/ChatServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/www/project/project_chat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/server/CMakeFiles/ChatServer.dir/app/chat_conf.cpp.o"
	cd /home/www/project/project_chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/CMakeFiles/ChatServer.dir/app/chat_conf.cpp.o -MF CMakeFiles/ChatServer.dir/app/chat_conf.cpp.o.d -o CMakeFiles/ChatServer.dir/app/chat_conf.cpp.o -c /home/www/project/project_chat/src/server/app/chat_conf.cpp

src/server/CMakeFiles/ChatServer.dir/app/chat_conf.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/app/chat_conf.cpp.i"
	cd /home/www/project/project_chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/www/project/project_chat/src/server/app/chat_conf.cpp > CMakeFiles/ChatServer.dir/app/chat_conf.cpp.i

src/server/CMakeFiles/ChatServer.dir/app/chat_conf.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/app/chat_conf.cpp.s"
	cd /home/www/project/project_chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/www/project/project_chat/src/server/app/chat_conf.cpp -o CMakeFiles/ChatServer.dir/app/chat_conf.cpp.s

src/server/CMakeFiles/ChatServer.dir/chat_server.cpp.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/chat_server.cpp.o: /home/www/project/project_chat/src/server/chat_server.cpp
src/server/CMakeFiles/ChatServer.dir/chat_server.cpp.o: src/server/CMakeFiles/ChatServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/www/project/project_chat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/server/CMakeFiles/ChatServer.dir/chat_server.cpp.o"
	cd /home/www/project/project_chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/CMakeFiles/ChatServer.dir/chat_server.cpp.o -MF CMakeFiles/ChatServer.dir/chat_server.cpp.o.d -o CMakeFiles/ChatServer.dir/chat_server.cpp.o -c /home/www/project/project_chat/src/server/chat_server.cpp

src/server/CMakeFiles/ChatServer.dir/chat_server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/chat_server.cpp.i"
	cd /home/www/project/project_chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/www/project/project_chat/src/server/chat_server.cpp > CMakeFiles/ChatServer.dir/chat_server.cpp.i

src/server/CMakeFiles/ChatServer.dir/chat_server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/chat_server.cpp.s"
	cd /home/www/project/project_chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/www/project/project_chat/src/server/chat_server.cpp -o CMakeFiles/ChatServer.dir/chat_server.cpp.s

src/server/CMakeFiles/ChatServer.dir/chat_service.cpp.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/chat_service.cpp.o: /home/www/project/project_chat/src/server/chat_service.cpp
src/server/CMakeFiles/ChatServer.dir/chat_service.cpp.o: src/server/CMakeFiles/ChatServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/www/project/project_chat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/server/CMakeFiles/ChatServer.dir/chat_service.cpp.o"
	cd /home/www/project/project_chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/CMakeFiles/ChatServer.dir/chat_service.cpp.o -MF CMakeFiles/ChatServer.dir/chat_service.cpp.o.d -o CMakeFiles/ChatServer.dir/chat_service.cpp.o -c /home/www/project/project_chat/src/server/chat_service.cpp

src/server/CMakeFiles/ChatServer.dir/chat_service.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/chat_service.cpp.i"
	cd /home/www/project/project_chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/www/project/project_chat/src/server/chat_service.cpp > CMakeFiles/ChatServer.dir/chat_service.cpp.i

src/server/CMakeFiles/ChatServer.dir/chat_service.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/chat_service.cpp.s"
	cd /home/www/project/project_chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/www/project/project_chat/src/server/chat_service.cpp -o CMakeFiles/ChatServer.dir/chat_service.cpp.s

src/server/CMakeFiles/ChatServer.dir/db/chat_db.cpp.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/db/chat_db.cpp.o: /home/www/project/project_chat/src/server/db/chat_db.cpp
src/server/CMakeFiles/ChatServer.dir/db/chat_db.cpp.o: src/server/CMakeFiles/ChatServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/www/project/project_chat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/server/CMakeFiles/ChatServer.dir/db/chat_db.cpp.o"
	cd /home/www/project/project_chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/CMakeFiles/ChatServer.dir/db/chat_db.cpp.o -MF CMakeFiles/ChatServer.dir/db/chat_db.cpp.o.d -o CMakeFiles/ChatServer.dir/db/chat_db.cpp.o -c /home/www/project/project_chat/src/server/db/chat_db.cpp

src/server/CMakeFiles/ChatServer.dir/db/chat_db.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/db/chat_db.cpp.i"
	cd /home/www/project/project_chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/www/project/project_chat/src/server/db/chat_db.cpp > CMakeFiles/ChatServer.dir/db/chat_db.cpp.i

src/server/CMakeFiles/ChatServer.dir/db/chat_db.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/db/chat_db.cpp.s"
	cd /home/www/project/project_chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/www/project/project_chat/src/server/db/chat_db.cpp -o CMakeFiles/ChatServer.dir/db/chat_db.cpp.s

src/server/CMakeFiles/ChatServer.dir/db/chat_db_pool.cpp.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/db/chat_db_pool.cpp.o: /home/www/project/project_chat/src/server/db/chat_db_pool.cpp
src/server/CMakeFiles/ChatServer.dir/db/chat_db_pool.cpp.o: src/server/CMakeFiles/ChatServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/www/project/project_chat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/server/CMakeFiles/ChatServer.dir/db/chat_db_pool.cpp.o"
	cd /home/www/project/project_chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/CMakeFiles/ChatServer.dir/db/chat_db_pool.cpp.o -MF CMakeFiles/ChatServer.dir/db/chat_db_pool.cpp.o.d -o CMakeFiles/ChatServer.dir/db/chat_db_pool.cpp.o -c /home/www/project/project_chat/src/server/db/chat_db_pool.cpp

src/server/CMakeFiles/ChatServer.dir/db/chat_db_pool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/db/chat_db_pool.cpp.i"
	cd /home/www/project/project_chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/www/project/project_chat/src/server/db/chat_db_pool.cpp > CMakeFiles/ChatServer.dir/db/chat_db_pool.cpp.i

src/server/CMakeFiles/ChatServer.dir/db/chat_db_pool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/db/chat_db_pool.cpp.s"
	cd /home/www/project/project_chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/www/project/project_chat/src/server/db/chat_db_pool.cpp -o CMakeFiles/ChatServer.dir/db/chat_db_pool.cpp.s

src/server/CMakeFiles/ChatServer.dir/main.cpp.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/main.cpp.o: /home/www/project/project_chat/src/server/main.cpp
src/server/CMakeFiles/ChatServer.dir/main.cpp.o: src/server/CMakeFiles/ChatServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/www/project/project_chat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/server/CMakeFiles/ChatServer.dir/main.cpp.o"
	cd /home/www/project/project_chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/CMakeFiles/ChatServer.dir/main.cpp.o -MF CMakeFiles/ChatServer.dir/main.cpp.o.d -o CMakeFiles/ChatServer.dir/main.cpp.o -c /home/www/project/project_chat/src/server/main.cpp

src/server/CMakeFiles/ChatServer.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/main.cpp.i"
	cd /home/www/project/project_chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/www/project/project_chat/src/server/main.cpp > CMakeFiles/ChatServer.dir/main.cpp.i

src/server/CMakeFiles/ChatServer.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/main.cpp.s"
	cd /home/www/project/project_chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/www/project/project_chat/src/server/main.cpp -o CMakeFiles/ChatServer.dir/main.cpp.s

src/server/CMakeFiles/ChatServer.dir/model/chat_friend_moel.cpp.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/model/chat_friend_moel.cpp.o: /home/www/project/project_chat/src/server/model/chat_friend_moel.cpp
src/server/CMakeFiles/ChatServer.dir/model/chat_friend_moel.cpp.o: src/server/CMakeFiles/ChatServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/www/project/project_chat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/server/CMakeFiles/ChatServer.dir/model/chat_friend_moel.cpp.o"
	cd /home/www/project/project_chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/CMakeFiles/ChatServer.dir/model/chat_friend_moel.cpp.o -MF CMakeFiles/ChatServer.dir/model/chat_friend_moel.cpp.o.d -o CMakeFiles/ChatServer.dir/model/chat_friend_moel.cpp.o -c /home/www/project/project_chat/src/server/model/chat_friend_moel.cpp

src/server/CMakeFiles/ChatServer.dir/model/chat_friend_moel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/model/chat_friend_moel.cpp.i"
	cd /home/www/project/project_chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/www/project/project_chat/src/server/model/chat_friend_moel.cpp > CMakeFiles/ChatServer.dir/model/chat_friend_moel.cpp.i

src/server/CMakeFiles/ChatServer.dir/model/chat_friend_moel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/model/chat_friend_moel.cpp.s"
	cd /home/www/project/project_chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/www/project/project_chat/src/server/model/chat_friend_moel.cpp -o CMakeFiles/ChatServer.dir/model/chat_friend_moel.cpp.s

src/server/CMakeFiles/ChatServer.dir/model/chat_group_model.cpp.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/model/chat_group_model.cpp.o: /home/www/project/project_chat/src/server/model/chat_group_model.cpp
src/server/CMakeFiles/ChatServer.dir/model/chat_group_model.cpp.o: src/server/CMakeFiles/ChatServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/www/project/project_chat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/server/CMakeFiles/ChatServer.dir/model/chat_group_model.cpp.o"
	cd /home/www/project/project_chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/CMakeFiles/ChatServer.dir/model/chat_group_model.cpp.o -MF CMakeFiles/ChatServer.dir/model/chat_group_model.cpp.o.d -o CMakeFiles/ChatServer.dir/model/chat_group_model.cpp.o -c /home/www/project/project_chat/src/server/model/chat_group_model.cpp

src/server/CMakeFiles/ChatServer.dir/model/chat_group_model.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/model/chat_group_model.cpp.i"
	cd /home/www/project/project_chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/www/project/project_chat/src/server/model/chat_group_model.cpp > CMakeFiles/ChatServer.dir/model/chat_group_model.cpp.i

src/server/CMakeFiles/ChatServer.dir/model/chat_group_model.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/model/chat_group_model.cpp.s"
	cd /home/www/project/project_chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/www/project/project_chat/src/server/model/chat_group_model.cpp -o CMakeFiles/ChatServer.dir/model/chat_group_model.cpp.s

src/server/CMakeFiles/ChatServer.dir/model/chat_offlinemessage_model.cpp.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/model/chat_offlinemessage_model.cpp.o: /home/www/project/project_chat/src/server/model/chat_offlinemessage_model.cpp
src/server/CMakeFiles/ChatServer.dir/model/chat_offlinemessage_model.cpp.o: src/server/CMakeFiles/ChatServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/www/project/project_chat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object src/server/CMakeFiles/ChatServer.dir/model/chat_offlinemessage_model.cpp.o"
	cd /home/www/project/project_chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/CMakeFiles/ChatServer.dir/model/chat_offlinemessage_model.cpp.o -MF CMakeFiles/ChatServer.dir/model/chat_offlinemessage_model.cpp.o.d -o CMakeFiles/ChatServer.dir/model/chat_offlinemessage_model.cpp.o -c /home/www/project/project_chat/src/server/model/chat_offlinemessage_model.cpp

src/server/CMakeFiles/ChatServer.dir/model/chat_offlinemessage_model.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/model/chat_offlinemessage_model.cpp.i"
	cd /home/www/project/project_chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/www/project/project_chat/src/server/model/chat_offlinemessage_model.cpp > CMakeFiles/ChatServer.dir/model/chat_offlinemessage_model.cpp.i

src/server/CMakeFiles/ChatServer.dir/model/chat_offlinemessage_model.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/model/chat_offlinemessage_model.cpp.s"
	cd /home/www/project/project_chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/www/project/project_chat/src/server/model/chat_offlinemessage_model.cpp -o CMakeFiles/ChatServer.dir/model/chat_offlinemessage_model.cpp.s

src/server/CMakeFiles/ChatServer.dir/model/chat_user_model.cpp.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/model/chat_user_model.cpp.o: /home/www/project/project_chat/src/server/model/chat_user_model.cpp
src/server/CMakeFiles/ChatServer.dir/model/chat_user_model.cpp.o: src/server/CMakeFiles/ChatServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/www/project/project_chat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object src/server/CMakeFiles/ChatServer.dir/model/chat_user_model.cpp.o"
	cd /home/www/project/project_chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/CMakeFiles/ChatServer.dir/model/chat_user_model.cpp.o -MF CMakeFiles/ChatServer.dir/model/chat_user_model.cpp.o.d -o CMakeFiles/ChatServer.dir/model/chat_user_model.cpp.o -c /home/www/project/project_chat/src/server/model/chat_user_model.cpp

src/server/CMakeFiles/ChatServer.dir/model/chat_user_model.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/model/chat_user_model.cpp.i"
	cd /home/www/project/project_chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/www/project/project_chat/src/server/model/chat_user_model.cpp > CMakeFiles/ChatServer.dir/model/chat_user_model.cpp.i

src/server/CMakeFiles/ChatServer.dir/model/chat_user_model.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/model/chat_user_model.cpp.s"
	cd /home/www/project/project_chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/www/project/project_chat/src/server/model/chat_user_model.cpp -o CMakeFiles/ChatServer.dir/model/chat_user_model.cpp.s

src/server/CMakeFiles/ChatServer.dir/redis/redis.cpp.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/redis/redis.cpp.o: /home/www/project/project_chat/src/server/redis/redis.cpp
src/server/CMakeFiles/ChatServer.dir/redis/redis.cpp.o: src/server/CMakeFiles/ChatServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/www/project/project_chat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object src/server/CMakeFiles/ChatServer.dir/redis/redis.cpp.o"
	cd /home/www/project/project_chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/CMakeFiles/ChatServer.dir/redis/redis.cpp.o -MF CMakeFiles/ChatServer.dir/redis/redis.cpp.o.d -o CMakeFiles/ChatServer.dir/redis/redis.cpp.o -c /home/www/project/project_chat/src/server/redis/redis.cpp

src/server/CMakeFiles/ChatServer.dir/redis/redis.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/redis/redis.cpp.i"
	cd /home/www/project/project_chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/www/project/project_chat/src/server/redis/redis.cpp > CMakeFiles/ChatServer.dir/redis/redis.cpp.i

src/server/CMakeFiles/ChatServer.dir/redis/redis.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/redis/redis.cpp.s"
	cd /home/www/project/project_chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/www/project/project_chat/src/server/redis/redis.cpp -o CMakeFiles/ChatServer.dir/redis/redis.cpp.s

# Object files for target ChatServer
ChatServer_OBJECTS = \
"CMakeFiles/ChatServer.dir/app/chat_conf.cpp.o" \
"CMakeFiles/ChatServer.dir/chat_server.cpp.o" \
"CMakeFiles/ChatServer.dir/chat_service.cpp.o" \
"CMakeFiles/ChatServer.dir/db/chat_db.cpp.o" \
"CMakeFiles/ChatServer.dir/db/chat_db_pool.cpp.o" \
"CMakeFiles/ChatServer.dir/main.cpp.o" \
"CMakeFiles/ChatServer.dir/model/chat_friend_moel.cpp.o" \
"CMakeFiles/ChatServer.dir/model/chat_group_model.cpp.o" \
"CMakeFiles/ChatServer.dir/model/chat_offlinemessage_model.cpp.o" \
"CMakeFiles/ChatServer.dir/model/chat_user_model.cpp.o" \
"CMakeFiles/ChatServer.dir/redis/redis.cpp.o"

# External object files for target ChatServer
ChatServer_EXTERNAL_OBJECTS =

/home/www/project/project_chat/bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/app/chat_conf.cpp.o
/home/www/project/project_chat/bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/chat_server.cpp.o
/home/www/project/project_chat/bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/chat_service.cpp.o
/home/www/project/project_chat/bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/db/chat_db.cpp.o
/home/www/project/project_chat/bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/db/chat_db_pool.cpp.o
/home/www/project/project_chat/bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/main.cpp.o
/home/www/project/project_chat/bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/model/chat_friend_moel.cpp.o
/home/www/project/project_chat/bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/model/chat_group_model.cpp.o
/home/www/project/project_chat/bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/model/chat_offlinemessage_model.cpp.o
/home/www/project/project_chat/bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/model/chat_user_model.cpp.o
/home/www/project/project_chat/bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/redis/redis.cpp.o
/home/www/project/project_chat/bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/build.make
/home/www/project/project_chat/bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/www/project/project_chat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Linking CXX executable /home/www/project/project_chat/bin/ChatServer"
	cd /home/www/project/project_chat/build/src/server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ChatServer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/server/CMakeFiles/ChatServer.dir/build: /home/www/project/project_chat/bin/ChatServer
.PHONY : src/server/CMakeFiles/ChatServer.dir/build

src/server/CMakeFiles/ChatServer.dir/clean:
	cd /home/www/project/project_chat/build/src/server && $(CMAKE_COMMAND) -P CMakeFiles/ChatServer.dir/cmake_clean.cmake
.PHONY : src/server/CMakeFiles/ChatServer.dir/clean

src/server/CMakeFiles/ChatServer.dir/depend:
	cd /home/www/project/project_chat/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/www/project/project_chat /home/www/project/project_chat/src/server /home/www/project/project_chat/build /home/www/project/project_chat/build/src/server /home/www/project/project_chat/build/src/server/CMakeFiles/ChatServer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/server/CMakeFiles/ChatServer.dir/depend

