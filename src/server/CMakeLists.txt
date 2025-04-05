# 定义了一个SRC_LIST变量，包含了该目录下所有的源文件
file(GLOB SRC_LIST ${CMAKE_CURRENT_SOURCE_DIR}/*.cpp 
                   ${CMAKE_CURRENT_SOURCE_DIR}/db/*.cpp 
                   ${CMAKE_CURRENT_SOURCE_DIR}/redis/*.cpp 
                   ${CMAKE_CURRENT_SOURCE_DIR}/model/*.cpp
                   ${CMAKE_CURRENT_SOURCE_DIR}/app/*.cpp)

# 指定生成可执行文件
add_executable(ChatServer ${SRC_LIST})

# 指定可执行文件链接时需要依赖的库文件
target_link_libraries(ChatServer muduo_net)
target_link_libraries(ChatServer muduo_base)
target_link_libraries(ChatServer mysqlclient)
target_link_libraries(ChatServer hiredis)
target_link_libraries(ChatServer pthread)