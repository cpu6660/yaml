#!/bin/bash
#0-按照模板生成部署yaml

set -o errexit
set -x

# 初始化
BASE_DIR=$(dirname "$0")

# 部署文件生成目录
DEPLOYMENT_DIR=$BASE_DIR/../deployments


# 加载环境变量
set -o allexport
source ${BASE_DIR}/environment.sh
set +o allexport


# 各服务yaml生成脚本
source ${BASE_DIR}/utils.sh
source ${BASE_DIR}/prepare/harbor.sh
source ${BASE_DIR}/prepare/minio.sh
source ${BASE_DIR}/prepare/mysql.sh
source ${BASE_DIR}/prepare/redis.sh
source ${BASE_DIR}/prepare/common-env.sh
source ${BASE_DIR}/prepare/project-env.sh

# 进入工作目录
cd $BASE_DIR
# 是否已存在部署目录
is_dir_exist $DEPLOYMENT_DIR


main() {
	generate_harbor_yaml  && generate_minio_yaml  && generate_mysql_yaml && generate_redis_yaml && generate_common_env_yaml && generate_project_env_yaml
}


main

