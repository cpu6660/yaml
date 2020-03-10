### minio部署

只把 minio 调度到打了 app=minio tag 的机器
```$xslt
# 为 worker1 worker2 打 tag

kubectl label node worker1 app=minio
kubectl label node worker2 app=minio

```


### 测试用例
#### 集群外测试(手动测试)
```sql
登录地址:  ip:port
测试创建bucket,删除bucket等
测试上传文件,下载文件
```


#### 集群内内测试(手动测试)
```sql
curl service.namespace.svc.cluster.local:port
```


#### 集群内测试(自动化测试)
```sql
使用auto-test项目对minio进行集群内自动化测试
```




### mysql 部署
#### 参考文档:https://hub.kubeapps.com/charts/bitnami/mysql

```sql
helm repo add bitnami https://charts.bitnami.com/bitnami
helm install --name db --namespace test-baiduai-common -f values.yaml bitnami/mysql
helm list
helm status baiduai-db
```


### 在区分不同环境又要使用公共服务时可以使用svc 的 external_name 机制
#### 文件: external_name_svc.yaml


### 公共服务相关秘钥
#### 创建流程
##### 模板
```yaml
apiVersion: v1
kind: Secret
metadata:
  name: mysql-secret
type: Opaque
data:
  username: YWRtaW4=
  password: MWYyZDFlMmU2N2Rm
```
##### 参数生成方式
```sql
echo -n "username" | base64
echo -n "password"  | base64 

```
