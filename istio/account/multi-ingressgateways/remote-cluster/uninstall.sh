#!/bin/bash
istioctl manifest generate  -f istio-remote0-cluster.yaml  | kubectl delete -f -