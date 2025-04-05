#########################################################################
# File Name: autobuild.sh
# Author: wang bing
# mail: wangbing_0819@163.com
# Created Time: 2023年02月23日 星期日 
#########################################################################
#!/bin/bash

set -x

rm -rf `pwd`/build/*
cd `pwd`/build &&
	cmake .. &&
	make
