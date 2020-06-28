#!/bin/bash

PROJECT_ENV_DEPLOYMENT_DIR=$DEPLOYMENT_DIR/project-cm

generate_project_env_yaml() {

	is_dir_exist $PROJECT_ENV_DEPLOYMENT_DIR

	length=${#PROJECTS[@]}
    for ((i=0; i< length; i ++))
    do

        echo ${PROJECTS[i]}
        DB_PROJECT_NAME=`echo ${DB_NAMES[i]} | sed 's/-/_/g'`
        PROJECT_DB_USER=${DB_PROJECT_NAME}_${RUN_MODE}_${U_PROJECT_NAME}
        PROJECT_DB_NAME=$PROJECT_DB_USER
        PROJECT_NAME=${PROJECTS[i]}  DB_USER=$PROJECT_DB_USER DB_NAME=$PROJECT_DB_NAME envsubst < ../project-cm/${PROJECTS[i]}.yaml > $PROJECT_ENV_DEPLOYMENT_DIR/${PROJECTS[i]}.yaml
    done



}