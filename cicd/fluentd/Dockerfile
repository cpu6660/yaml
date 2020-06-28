FROM fluentd:v1.9-1

# Use root account to use apt
USER root

# below RUN includes plugin as examples elasticsearch is not required
# you may customize including plugins as you wish

RUN apk --no-cache --update add sudo

# 增加编译所需要的相关工具
RUN apk add ruby-dev
RUN apk add g++
RUN apk add make
RUN sudo fluent-gem install fluent-plugin-elasticsearch
RUN sudo fluent-gem install fluent-plugin-kubernetes_metadata_filter
RUN sudo gem sources --clear-all