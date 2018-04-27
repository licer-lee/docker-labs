
# 运行一个前台容器
docker run --rm --name myjenkins -p 8085:8080 -p 50000:50000 -v /opt/jenkins:/var/jenkins_home -u 0 jenkins/jenkins:lts

# 运行一个后台容器
docker run --rm --name myjenkins -p 8085:8080 -p 50000:50000 -v /opt/jenkins:/var/jenkins_home -u 0 -d jenkins/jenkins:lts
