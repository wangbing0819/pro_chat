#include "chat_conf.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <memory>
#include <functional>
#include <iostream>
#include <algorithm>
#include <cctype>

Config* Config::getInstance()
{
    static Config instance;
    return &instance;
}

bool Config::load(const char* pconfName)
{
    // 智能指针管理FILE
    std::unique_ptr<FILE, std::function<void(FILE*)>> pfp(fopen(pconfName,"r"), [](FILE* pf)->void{
        fclose(pf);
    });
    if(pfp == nullptr)
    { 
        std::cout << "conf open failed. path: " << pconfName << std::endl;
        return false;
    }

    char linebuf[501] = {0};
    while(!feof(pfp.get()))  //检查文件是否结束 ，没有结束则条件成立
    {    
        if(fgets(linebuf,500, pfp.get()) == nullptr) //从文件中读数据，每次读一行，一行最多不要超过500个字符 
            continue;

        if(linebuf[0] == 0)
            continue;

        // 处理注释行
        if(*linebuf==';' || *linebuf==' ' || *linebuf=='#' || *linebuf=='\t'|| *linebuf=='\n' || *linebuf=='[')
			continue;
        
        // 取出多余的空格
        std::string line(linebuf);
        line.erase(std::remove_if(line.begin(), line.end(), isspace), line.end());
        if(line.empty())
            continue;

        int idx = line.find("=");
        if(-1 != idx)
        {
            std::string key = line.substr(0, idx);
            std::string content = line.substr(idx+1, line.size() - idx);
            m_configLists.insert(std::make_pair(key, content));
        }
    } //end while(!feof(fp)) 

    return true;
}

const char *Config::getString(const char *p_itemname)
{
	auto iter = m_configLists.find(p_itemname);
    if(m_configLists.end() != iter)
    {
        return iter->second.c_str();
    }
	return nullptr;
}

int Config::getIntDefault(const char *p_itemname,int def/* 8000 */)
{
	auto iter = m_configLists.find(p_itemname);
    if(m_configLists.end() != iter)
    {
        return stoi(iter->second);
    }
	return def;
}

 