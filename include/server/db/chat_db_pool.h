#ifndef CHAT_DB_POOL_H_
#define CHAT_DB_POOL_H_

#include <chrono>
#include <thread>
#include <atomic>
#include <queue>
#include <functional>
#include <condition_variable>

#include "chat_db.h"

class ConnectionPool
{
public:
    // 获取唯一的实例对象
    static ConnectionPool* getInstance();

    // 获取服务连接
    shared_ptr<MySQL> getConnection();
private:
    // 构造函数私有化；
    ConnectionPool();  

    // 禁止拷贝构造
    ConnectionPool(const ConnectionPool&) = delete;
    ConnectionPool(ConnectionPool&&) = delete;

    // 负责生产线连接
    void processConnectTask();  

    // 处理队列中存活时间过长的连接
    void dealConnectTask();  

private:
    int                     _initSize;          // 连接池的初始连接量
    int                     _maxSize;           // 连接池的最大连接量
    int                     _maxIdleTime;       // 连接池的最大空闲时间
    int                     _maxConTime;        // 连接池的最大连接超时时间

    std::queue<MySQL*>      _connectQue;        // 连接池的连接队列
    mutex                   _queueMtx;          // 维护队列线程安全的互斥锁
    atomic_int              _connectAmount;     // 记录链接的总数量
    condition_variable      _cv;                // 设置条件变量，用于连接生产线程和连接消费线程的通信

};


#endif