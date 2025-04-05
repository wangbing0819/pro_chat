#ifndef CHAT_CONF_H_
#define CHAT_CONF_H_

#include <unordered_map>
#include <string>

// 单例模式
class Config
{
public:
    static Config* getInstance();

    bool load(const char* pconfName);
    const char* getString(const char *p_itemname);
	int getIntDefault(const char *p_itemname, int def = 8000);

private:
    Config() = default;
    Config(const Config&) = delete;
    Config(Config&&) = delete;

private:
    std::unordered_map<std::string, std::string> m_configLists;
};


#endif