#!/bin/bash
# 1-根据生成部署yaml,创建对应的服务

set -x
set -o errexit

# 初始化
BASE_DIR=$(dirname "$0")

# 各服务部署脚本生成目录
DEPLOYMENT_DIR=$BASE_DIR/../deployments


# 加载环境变量
set -o allexport
source ${BASE_DIR}/environment.sh
set +o allexport



# 各服务创建脚本
source ${BASE_DIR}/utils.sh
source ${BASE_DIR}/deploy/common_service.sh
source ${BASE_DIR}/deploy/common_env.sh
source ${BASE_DIR}/deploy/project_env.sh


# 进入工作目录
cd $BASE_DIR

main()	{
	create_common_service && create_common_env && create_project_env
	#create_common_env && create_project_env

}


main