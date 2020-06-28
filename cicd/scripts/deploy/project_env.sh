#!/bin/bash

PROJECT_ENV_DEPLOYMENT_DIR=$DEPLOYMENT_DIR/project-cm



create_project_env() {


	length=${#PROJECTS[@]}
    for ((i=0; i< length; i ++))
    do
       	set +e
       	kubectl delete -f  $PROJECT_ENV_DEPLOYMENT_DIR/${PROJECTS[i]}.yaml
       	set -e
       	kubectl create -f  $PROJECT_ENV_DEPLOYMENT_DIR/${PROJECTS[i]}.yaml
    done

}