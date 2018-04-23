
# 编译打包
mvn clean package

# 构建镜像
docker build . licerlee/javaweb:v2

# 登陆hub
docker login -u licerlee

# 推送镜像
docker push licerlee/javaweb:v2

# 退出登陆
# docker logout