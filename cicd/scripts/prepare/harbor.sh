#!/bin/bash

HARBOR_DEPLOYMENT_DIR=$DEPLOYMENT_DIR/harbor

generate_harbor_yaml() {

	is_dir_exist $HARBOR_DEPLOYMENT_DIR
	# 生成配置文件
	envsubst < ../common-svc/harbor.yaml > $HARBOR_DEPLOYMENT_DIR/harbor.yaml


}