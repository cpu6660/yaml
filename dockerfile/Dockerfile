FROM ubuntu
# 创建group1,并设置组id为1000
RUN groupadd -r appuser -g 1000
# 创建group2,并设置组id为1001
RUN groupadd -r appuser2 -g 1001

RUN useradd -r -u 1000 -g appuser appuser
RUN usermod -a -G appuser2 appuser

USER appuser
ENTRYPOINT ["sleep", "infinity"]