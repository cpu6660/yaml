```sql
#!/bin/bash

docker stop fluentd-file  && docker rm fluentd-file

docker run --name fluentd-file -d  -v /home/fluent/ops:/home/fluent/ops -v /var/log/statistics:/home/fluent/data -v /etc/localtime:/etc/localtime:ro    -v /root/eliot/fluent-file/fluent.conf:/fluentd/etc/fluent.conf     uhub.service.ucloud.cn/safehouse/fluentd:v1.9-4  -c /fluentd/etc/fluent.conf
```