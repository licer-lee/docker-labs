 # 启用swarm集群模式，帮配置当前机器为管理节点
 docker swarm init
 
 # 部署集群应用
 docker stack deploy -c docker-compose.yml <deploy-name>
 
 # 查看启动的容器
 docker stack ps <deploy-name>
 
 # 扩展应用
  修改 docker-compose.yml 中replicas 的值，重新执行步骤2部署命令。Docker 将执行原地更新，而无需先清除技术栈或终止任何容器。
 
 #清除应用
 docker stack rm <deploy-name>
 
 #清除 swarm
 docker swarm leave --force
 
 #查看集群节点
 docker node ls
 
 