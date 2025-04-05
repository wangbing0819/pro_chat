#include "chat_db_pool.h"
#include "chat_conf.h"

#include <iostream>

// 线程安全的懒汉式单例模式；
ConnectionPool* ConnectionPool::getInstance()
{
    static ConnectionPool cnnPool;
    return &cnnPool;
}

ConnectionPool::ConnectionPool()
    : _initSize(Config::getInstance()->getIntDefault("initSize"))
    , _maxSize(Config::getInstance()->getIntDefault("maxSize"))
    , _maxIdleTime(Config::getInstance()->getIntDefault("maxIdleTime"))
    , _maxConTime(Config::getInstance()->getIntDefault("maxConTime"))
{
    // #1 初始化连接池
    std::cout << "initial connection pool, size: " << _initSize << std::endl;
    for(int i = 0; i < _initSize; ++i)
    {
        MySQL* ms = new MySQL();
        if(!ms->connect())
            continue;
        ms->refreshAliveTime();
        _connectQue.push(ms);
        _connectAmount++;
    }

    if(_connectAmount == 0)
    {
        std::cout << "initial connection pool failed." << std::endl;
        exit(EXIT_FAILURE);
    }

    // #2 启动一个新线程（动态生成新的连接）
    std::thread produce(std::bind(&ConnectionPool::processConnectTask, this));
    produce.detach();

    // #3 启动一个新线程（回收超长待机的连接）
    std::thread deal(std::bind(&ConnectionPool::dealConnectTask, this));
    deal.detach();
}

// 生产者线程（成员函数）
void ConnectionPool::processConnectTask()
{
    while(true)
    {
        // #1 队列不为空， 生产者进入等待状态
        unique_lock<std::mutex> lock(_queueMtx);
        _cv.wait(lock, [this]()->bool{
            return _connectQue.size() == 0;
        });

        // #2 连接池未到达上限，可以增加新连接
        if(_connectAmount < _maxSize)
        {
            MySQL* ms = new MySQL();
            ms->connect();
            ms->refreshAliveTime();
            _connectQue.push(ms);
            _connectAmount++;
        }

        // #3 通知可以在池内获取连接使用
        _cv.notify_all();
    }
}

// 获取连接队列中的连接
shared_ptr<MySQL> ConnectionPool::getConnection()
{
    unique_lock<mutex> lock(_queueMtx);
    if(_connectQue.empty())
    {
        // 在最大连接超时时间段内等待获取锁；
        if(cv_status::timeout == _cv.wait_for(lock, std::chrono::milliseconds(_maxConTime))) 
            return nullptr;        
    }

    // 成功获取连接队列中的连接
    // 注意shared_ptr析构时，会delete当前获取到的连接，相当于调用MySQL析构函数， MySQL被close了；
    // 真正需要不是关闭连接，只需要把连接重新放回队列中留着下次调用；
    // 这里需要自定义智能指针的删除器
    shared_ptr<MySQL> pms(_connectQue.front(), [&](MySQL* pcon)->void{
        pcon->refreshAliveTime();
        unique_lock<mutex> lock(_queueMtx);
        _connectQue.push(pcon);
    });
    _connectQue.pop();

    if(_connectQue.empty()) _cv.notify_all();
    return pms;
}

// 处理队列中存活时间过长的连接
void ConnectionPool::dealConnectTask()
{
    while(true)
    {
        // 模拟定时效果
        this_thread::sleep_for(chrono::seconds(_maxIdleTime));

        // 扫描队列，释放多余的连接   
        unique_lock<mutex> lock(_queueMtx);  
        while(_connectAmount > _initSize)
        {
            MySQL* currrent = _connectQue.front();
            if(currrent->getAliveTime() >= (_maxIdleTime * 1000))
            {
                _connectQue.pop();
                delete currrent;
                _connectAmount--;
            }
            else
            {
                break;
            }
        }
    }
}

