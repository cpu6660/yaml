#!/bin/bash

# prepare k8s endpoint
echo "$K8S_IP $K8S_DOMAIN" >> /etc/hosts;

# kube config
rm -rf ~/.kube && mkdir ~/.kube && cp $KUBE_CONFIG ~/.kube/config;

envsubst < deployment_template.yaml > deployment.yaml;

