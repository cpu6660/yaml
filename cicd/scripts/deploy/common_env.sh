#!/bin/bash

COMMON_ENV_DEPLOYMENT_DIR=$DEPLOYMENT_DIR/config-map



create_common_env() {


	set +e
	kubectl delete -f  $COMMON_ENV_DEPLOYMENT_DIR/common_env.yaml
	set -e
	kubectl create -f  $COMMON_ENV_DEPLOYMENT_DIR/common_env.yaml


}