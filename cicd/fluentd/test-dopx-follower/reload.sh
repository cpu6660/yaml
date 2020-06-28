#!/bin/bash 
kubectl delete cm fluent-conf -n test-dopx-follower

kubectl create cm fluent-conf --from-file fluent.conf -n test-dopx-follower

kubectl delete -f fluentd-daemonset-elasticsearch.yaml

kubectl create -f fluentd-daemonset-elasticsearch.yaml


