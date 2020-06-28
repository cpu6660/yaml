#!/bin/bash



# 初始化
BASE_DIR=$(dirname "$0")



# 加载环境变量
set -o allexport
source ${BASE_DIR}/environment.sh
set +o allexport



# 进入工作目录
cd $BASE_DIR

length=${#PROJECTS[@]}
for ((i=0; i< length; i ++))
do
	DB_PROJECT_NAME=`echo ${DB_NAMES[i]} | sed 's/-/_/g'`
	DB_USER=${DB_PROJECT_NAME}_${RUN_MODE}_${U_PROJECT_NAME}

	echo $DB_USER
done