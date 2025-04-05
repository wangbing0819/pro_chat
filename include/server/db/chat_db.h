#ifndef CHAT_DB_H
#define CHAT_DB_H

#include <mysql/mysql.h>
#include <string>
#include <ctime>
using namespace std;

// 数据库操作类
class MySQL
{
public:
    // 初始化数据库连接
    MySQL();
    // 释放数据库连接资源
    ~MySQL();
    // 连接数据库
    bool connect();
    // 更新操作
    bool update(const string& sql);
    // 查询操作
    MYSQL_RES *query(const string& sql);
    // 获取连接
    MYSQL* getConnection();
    // 刷新连接的开始空闲时间点
    void refreshAliveTime();
    // 获取空闲时间
    clock_t getAliveTime()const;
private:
    MYSQL            *_conn;             // 表示Mysql Server的一条连接
    clock_t          _aliveTime;         // 表示记录进入空闲状态后的存活时间
};

#endif