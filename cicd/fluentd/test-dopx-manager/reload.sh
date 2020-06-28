#!/bin/bash 
kubectl delete cm fluent-conf -n test-dopx-manager

kubectl create cm fluent-conf --from-file fluent.conf -n test-dopx-manager

kubectl delete -f fluentd-daemonset-elasticsearch.yaml

kubectl create -f fluentd-daemonset-elasticsearch.yaml


