# 从当前目录的Dockerfile文件构建image. -t adds a tag to the image
docker image build . -t ch03-build-image

# 从镜像中生成容器并运行. --rm 运行停止后删除容器
docker run --rm --name ch03 ch03-build-image
