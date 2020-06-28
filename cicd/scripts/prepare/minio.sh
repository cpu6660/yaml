#!/bin/bash

MINIO_DEPLOYMENT_DIR=$DEPLOYMENT_DIR/minio

generate_minio_yaml() {

	is_dir_exist $MINIO_DEPLOYMENT_DIR
	# 生成配置文件
	envsubst < ../common-svc/minio.yaml > $MINIO_DEPLOYMENT_DIR/minio.yaml


}