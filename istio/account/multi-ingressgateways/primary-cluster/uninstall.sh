#!/bin/bash
istioctl manifest generate  -f istio-main-cluster.yaml  | kubectl delete -f -