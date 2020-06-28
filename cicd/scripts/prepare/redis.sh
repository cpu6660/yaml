#!/bin/bash

REDIS_DEPLOYMENT_DIR=$DEPLOYMENT_DIR/redis

generate_redis_yaml() {

	is_dir_exist $REDIS_DEPLOYMENT_DIR
	# 生成配置文件
	envsubst < ../common-svc/redis.yaml > $REDIS_DEPLOYMENT_DIR/redis.yaml

}