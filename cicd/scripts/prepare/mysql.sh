#!/bin/bash

MYSQL_DEPLOYMENT_DIR=$DEPLOYMENT_DIR/mysql

generate_mysql_yaml() {

	is_dir_exist $MYSQL_DEPLOYMENT_DIR

	envsubst < ../common-svc/mysql.yaml > $MYSQL_DEPLOYMENT_DIR/mysql.yaml


}