#include <muduo/base/Logging.h>

#include "chat_db.h"
#include "chat_conf.h"

// 初始化数据库连接
MySQL::MySQL()
{
    _conn = mysql_init(nullptr);
}

// 释放数据库连接资源
MySQL::~MySQL()
{
    if (_conn != nullptr)
        mysql_close(_conn);
}

// 连接数据库
bool MySQL::connect()
{   
    // 读取配置文件中数据库配置信息
    std::string server = Config::getInstance()->getString("server_ip");
    std::string user = Config::getInstance()->getString("username");
    std::string password = Config::getInstance()->getString("password");
    std::string dbname = Config::getInstance()->getString("dbname");
    int dbport = Config::getInstance()->getIntDefault("dbport", 3306);

    MYSQL *p = mysql_real_connect(_conn, server.c_str(), user.c_str(),
                                  password.c_str(), dbname.c_str(), dbport, nullptr, 0);
    if (p != nullptr)
    {
        // C和C++代码默认的编码字符是ASCII，如果不设置，从MySQL上拉下来的中文显示？
        mysql_query(_conn, "set names gbk");
        LOG_INFO << "connect mysql success!";
    }
    else
    {
        LOG_INFO << "connect mysql fail!";
    }

    return p != nullptr;
}

// 更新操作
bool MySQL::update(const string& sql)
{
    if (mysql_query(_conn, sql.c_str()))
    {
        LOG_INFO << __FILE__ << ":" << __LINE__ << ":"
                 << sql << "update failed!";
        return false;
    }

    return true;
}

// 查询操作
MYSQL_RES *MySQL::query(const string& sql)
{
    if (mysql_query(_conn, sql.c_str()))
    {
        LOG_INFO << __FILE__ << ":" << __LINE__ << ":"
                 << sql << "query failed!";
        return nullptr;
    }
    
    return mysql_use_result(_conn);
}

// 获取连接
MYSQL* MySQL::getConnection()
{
    return _conn;
}

// 刷新连接的开始空闲时间点
void MySQL::refreshAliveTime()
{
    _aliveTime = clock();
}

// 获取空闲时间
clock_t MySQL::getAliveTime()const
{
    return clock() - _aliveTime;
}