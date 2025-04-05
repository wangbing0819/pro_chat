#include <iostream>
#include <string>
#include <signal.h>
using namespace std;

#include "chat_server.h"
#include "chat_service.h"
#include "chat_db_pool.h"

// 处理服务器ctrl+c结束后，重置user的状态信息
void resetHandler(int)
{
    ChatService::instance()->reset();
    exit(0);
}

int main(int argc, char **argv)
{
    
    // 读取配置文件
    ChatService::instance()-> init(argc, argv);
    std::cout << "----------------------------------------" << std::endl;
    std::cout << "[Server] server_ip: " << Config::getInstance()->getString("server_ip") << std::endl;
    std::cout << "[Server] server_port: " << Config::getInstance()->getString("server_port") << std::endl;
    std::cout << "[DB] username: " << Config::getInstance()->getString("username") << std::endl;
    std::cout << "[DB] password: " << Config::getInstance()->getString("password") << std::endl;
    std::cout << "[DB] dbname: " << Config::getInstance()->getString("dbname") << std::endl;
    std::cout << "[DB] dbport: " << Config::getInstance()->getIntDefault("dbport") << std::endl;
    std::cout << "[ConnectionPool] dbport: " << Config::getInstance()->getIntDefault("initSize") << std::endl;
    std::cout << "[ConnectionPool] dbport: " << Config::getInstance()->getIntDefault("maxSize") << std::endl;
    std::cout << "[ConnectionPool] dbport: " << Config::getInstance()->getIntDefault("maxIdleTime") << std::endl;
    std::cout << "[ConnectionPool] dbport: " << Config::getInstance()->getIntDefault("maxConTime") << std::endl;
    std::cout << "----------------------------------------" << std::endl;
    ConnectionPool::getInstance();


    // 解析通过命令行参数传递的ip和port
    std::string ip = Config::getInstance()->getString("server_ip");
    uint16_t port = Config::getInstance()->getIntDefault("server_port");

    signal(SIGINT, resetHandler);

    EventLoop loop;
    InetAddress addr(ip, port);
    ChatServer server(&loop, addr, "ChatServer");

    server.start();
    loop.loop();

    return 0;
}