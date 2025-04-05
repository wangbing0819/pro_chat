#ifndef CHAT_FRIEND_MODEL_H
#define CHAT_FRIEND_MODEL_H

#include <vector>

#include "chat_user.h"

// 维护好友信息的操作接口方法
class FriendModel
{
public:
    // 添加好友关系
    void insert(int userid, int friendid);

    // 返回用户好友列表
    std::vector<User> query(int userid);
};

#endif