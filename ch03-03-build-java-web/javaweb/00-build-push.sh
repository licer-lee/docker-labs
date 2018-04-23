
# 编译打包
mvn clean package

# 删除已存在的本地镜像
docker rmi -f licerlee/javaweb:latest

# 构建镜像
docker build . -t licerlee/javaweb:latest

# 登陆hub
docker login -u licerlee

# 推送镜像
docker push licerlee/javaweb:latest

# 退出登陆
# docker logout