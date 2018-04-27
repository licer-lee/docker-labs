
# 启动jenkins容器

docker run --rm --name myjenkins -p 8085:8080 -p 50000:50000 -v /opt/jenkins:/var/jenkins_home -u 0 jenkins/jenkins:lts

> -u 0 解决权限不够问题：touch: cannot touch '/var/jenkins_home/copy_reference_file.log': Permission denied Can not write to /var/jenkins_home/copy_reference_file.log. Wrong volume permissions?
参考：https://blog.csdn.net/minicto/article/details/73539986



