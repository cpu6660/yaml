# 创建 nginx ConfigMap
kubectl create cm nginx-config --from-file=nginx.conf

# 创建 jupyter-proxy 服务
kubectl create -f proxy-service.yaml
