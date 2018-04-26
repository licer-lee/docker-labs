
# 启动一个新的mysql容器
#docker run --rm -d -p 3306:3306 --name mysql57 mysql:5.7

# 启动一个已有数据库文件及挂载外部配置文件目录的mysql容器
docker run --rm --name mysql57 -v /opt/mysql57/data:/var/lib/mysql -v /opt/mysql57/cnf:/etc/mysql/mysql.conf.d/ -d -p 3306:3306 mysql:5.7
