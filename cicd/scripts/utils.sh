#!/bin/bash

# 判断目录是否存在,如果不存在,则判断
is_dir_exist() {
	if [ ! -d $1 ]; then
	  mkdir $1
	fi
}
