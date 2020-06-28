## fluentd 部署步骤

### 创建fluent-conf
```sql
kubectl create cm fluent-conf --from-file fluent.conf -n universal-developer-common  
```


### build fluentd image 
```sql
docker build -t xxx . 
```

### 创建fluent service account 


### 创建fluent-daemonset 服务

```sql
kubectl -f fluentd-daemonset-elasticsearch.yaml 
```



## 统一更新部署
```sql
sh reload.sh 
```
