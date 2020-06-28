#!/bin/bash

COMMON_ENV_DEPLOYMENT_DIR=$DEPLOYMENT_DIR/config-map

generate_common_env_yaml() {

	is_dir_exist $COMMON_ENV_DEPLOYMENT_DIR
	# 生成配置文件
	envsubst < ../config-map/common_env.yaml > $COMMON_ENV_DEPLOYMENT_DIR/common_env.yaml

}