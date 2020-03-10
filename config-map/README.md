### 创建nginx-pod
```sql
kubectl create -f nginx.yaml 
```

### 创建nginx-config-map
```sql
kubectl create cm nginx-config-map --from-file config.json -n uwebtop   
```


### 创建使用cm的nginx
```sql

```
