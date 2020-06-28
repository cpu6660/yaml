#!/bin/bash

MINIO_SERVICE_DEPLOYMENT_DIR=$DEPLOYMENT_DIR/minio

HARBOR_SERVICE_DEPLOYMENT_DIR=$DEPLOYMENT_DIR/harbor

REDIS_SERVICE_DEPLOYMENT_DIR=$DEPLOYMENT_DIR/redis

MYSQL_SERVICE_DEPLOYMENT_DIR=$DEPLOYMENT_DIR/mysql


create_common_service() {


	set +e
	kubectl delete -f  $MINIO_SERVICE_DEPLOYMENT_DIR/minio.yaml
	set -e
	kubectl create -f  $MINIO_SERVICE_DEPLOYMENT_DIR/minio.yaml



	set +e
	kubectl delete -f $HARBOR_SERVICE_DEPLOYMENT_DIR/harbor.yaml
	set -e
	kubectl create -f $HARBOR_SERVICE_DEPLOYMENT_DIR/harbor.yaml


	set +e
	kubectl delete -f $REDIS_SERVICE_DEPLOYMENT_DIR/redis.yaml
	set -e
	kubectl create -f $REDIS_SERVICE_DEPLOYMENT_DIR/redis.yaml


	set +e
	kubectl delete -f $MYSQL_SERVICE_DEPLOYMENT_DIR/mysql.yaml
	set -e
	kubectl create -f $MYSQL_SERVICE_DEPLOYMENT_DIR/mysql.yaml
}