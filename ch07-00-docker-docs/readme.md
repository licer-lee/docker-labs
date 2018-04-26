# http://dockone.io/article/103

# 所有Dockerfile都必须以FROM命令开始。FROM命令会指定镜像基于哪个基础镜像创建，接下来的命令也会基于这个基础镜像。
# FROM命令可以多次使用，表示会创建多个镜像。
FROM centos

# MAINTAINER：设置该镜像的作者。语法如下：
MAINTAINER licerlee@gmail.com

# RUN：在shell或者exec的环境下执行的命令。RUN指令会在新创建的镜像上添加新的层面，接下来提交的结果用在Dockerfile的下一条指令中。
RUN echo " RUN command running..."
 
# ADD：复制文件指令。它有两个参数<source>和<destination>。
# destination是容器内的路径。 source可以是URL或者是启动配置上下文中的一个文件
ADD . /usr/local/myapp

# CMD：提供了容器默认的执行命令。 Dockerfile只允许使用一次CMD指令。 使用多个CMD会抵消之前所有的指令，只有最后一个指令生效。
# CMD有三种形式：
# 	CMD ["executable","param1","param2"] 
#	CMD ["param1","param2"] 
#	CMD command param1 param2
CMD ["/bin/sh","echo","hello, docker-compose"]

# EXPOSE：指定容器在运行时监听的端口。
EXPOSE 8080


# ENTRYPOINT：配置给容器一个可执行的命令，这意味着在每次使用镜像创建容器时一个特定的应用程序可以被设置为默认程序。同时也意味着该镜像每次被调用时仅能运行指定的应用。类似于CMD，Docker只允许一个ENTRYPOINT，多个ENTRYPOINT会抵消之前所有的指令，只执行最后的ENTRYPOINT指令。语法如下：
#	ENTRYPOINT ["executable", "param1","param2"]
#	ENTRYPOINT command param1 param2

# WORKDIR：指定RUN、CMD与ENTRYPOINT命令的工作目录。语法如下：
WORKDIR /usr/local/myapp




#要获取所有容器名称及其IP地址只需一个命令。
docker inspect -f '{{.Name}} - {{.NetworkSettings.IPAddress }}' $(docker ps -aq)



