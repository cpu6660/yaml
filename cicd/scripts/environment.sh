#!/bin/bash

RUN_MODE='pre'
#xm_ai,xm_dataopen,baidu_ai
U_PROJECT_NAME='xm_dataopen'

# 产品名(用来拼接namespace的名字)
PROJECT_NAME=`echo $U_PROJECT_NAME | sed 's/_//g'`
# 部署namespace
DEPLOYMENT_NAMESPACE=$RUN_MODE-$PROJECT_NAME-manager


### start: 基础组件的ip,用来生成各个namespace下的svc
MINIO_EXTERNAL_NAME='minio.test-baiduai-common.svc.cluster.local'

HARBOR_HOST='192.168.255.40'

MYSQL_HOST='192.168.255.76'
MYSQL_PORT='3309'


REDIS_HOST='192.168.255.116'
REDIS_PORT='6379'

### end



# 部署后用户端对外域名
U_FRONTEND_DOMAIN='chinaai.sf.ucloud.cn'

# 部署后管理员端对外域名
U_BACKEND_DOMAIN='aloha.sf.ucloud.cn'

# harbor对外域名
U_HUB_EXTERNAL_DOMAIN="hub.ucloud.cn"

# 资源平台(ucloud/ustack)
U_RESOURCE_PROVIDER="ucloud"


# nginx所需环境变量
JUPYTER_NAMESPACE=$RUN_MODE-$PROJECT_NAME-jupyter
K8S_DNS_RESOLVER=172.16.0.10


# offline-server 服务所需环境变量
BATCH_JOB_IMAGE_SECRETS=sf-repo,harbor-repo
BATCH_JOB_NAMESPACE=$RUN_MODE-$PROJECT_NAME-batch


# rc-manager
U_RCMAN_BASE_URL='http://console.pre.ucloudstack.com/api'
U_RCMAN_PROJECT_ID='org-idskha'
U_RCMAN_REGION='cn'
U_RCMAN_ZONE='zone-01'
U_RCMAN_VM_TYPE='ComputeSet01'
U_RCMAN_CHARGE_TYPE='Dynamic'
U_RCMAN_BOOT_DISK_TYPE='StorageSet01'
U_RCMAN_BOOT_DISK_SIZE='40'
U_RCMAN_DATA_DISK_TYPE='StorageSet02'
U_RCMAN_DATA_DISK_SIZE='100'
U_RCMAN_PUBLIC_KEY='xxxx'
U_RCMAN_PRIVATE_KEY='xxxx'
U_RCMAN_SANDBOX_USERNAME='root'




# 项目名(用来生成各项目的自有env文件)
PROJECTS=("safegate"
"dataopen-auth"
"sso-auth"
"platform-continue"
"dynamic-proxy"
"docker-manager"
"sp-biz"
"uwebtop"
"dop-biz"
"dataproxy"
"datagate-formal"
"datagate-sample"
"jupyter-biz"
"iam"
"rcmanager"
"auditmanager"
"dynamic-masker"
"offline-server"
"scorpio"
"sp-custom-biz"
"nginx-xiamen"
)


# 有的项目名太长,不能作为db_name(db_name有最长32位的限制)
DB_NAMES=("sg"
"do-auth"
"sso-auth"
"pf-continue"
"dy-proxy"
"dm"
"sp-biz"
"uwebtop"
"dop-biz"
"dataproxy"
"dg-formal"
"dg-sample"
"jupyter-biz"
"iam"
"rcmanager"
"am"
"dy-masker"
"ofl-server"
"scorpio"
"sp-cs-biz"
"nginx-xiamen"
)