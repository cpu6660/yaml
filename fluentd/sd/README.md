```sql
docker run -d -p 24224:24224  -p  24224:24224/udp  -v /root/eliot/fluent/fluent.conf:/fluentd/etc/fluent.conf     uhub.service.ucloud.cn/safehouse/fluentd:v1.9-4  -c /fluentd/etc/fluent.conf
```


```sql
docker run --log-driver=fluentd --log-opt fluentd-address=192.168.165.15:24224 --log-opt tag=gin-upgrade  -d -p 8044:8080 gin-upgrade

```



```sql
#!/bin/bash

docker stop fluentd  && docker rm fluentd

docker run --name fluentd -d -p 24224:24224  -p  24224:24224/udp  -v /etc/localtime:/etc/localtime:ro  -v /var/log/fluent:/home/fluent  -v /root/eliot/fluent/fluent.conf:/fluentd/etc/fluent.conf     fluentd:latest  -c /fluentd/etc/fluent.conf

sleep 5
docker stop gin-upgrade  && docker rm gin-upgrade
docker run --name gin-upgrade  --log-driver=fluentd --log-opt fluentd-address=192.168.165.15:24224 --log-opt tag=gin-upgrade  -d -p 8044:8080 gin-upgrade
```