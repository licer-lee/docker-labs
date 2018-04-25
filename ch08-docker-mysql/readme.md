
>https://hub.docker.com/r/library/mysql/

# 启动一个新的mysql容器
docker run --rm -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root123 --name mysql57 mysql:5.7


#Connect to MySQL from an application in another Docker container
docker run --name some-app --link some-mysql:mysql -d application-that-uses-mysql


#Connect to MySQL from the MySQL command line client
docker run -it --link some-mysql:mysql --rm mysql sh -c 'exec mysql -h"$MYSQL_PORT_3306_TCP_ADDR" -P"$MYSQL_PORT_3306_TCP_PORT" -uroot -p"$MYSQL_ENV_MYSQL_ROOT_PASSWORD"'

docker run -it --rm mysql mysql -hsome.mysql.host -usome-mysql-user -p


#Container shell access and viewing MySQL logs
docker exec -it some-mysql bash
docker logs some-mysql

#Using a custom MySQL configuration file
docker run --name mysql57 -v /opt/mysql57/cnf:/etc/mysql/conf.d -e MYSQL_ROOT_PASSWORD=root123 -d -p 3306:3306 mysql:5.7

chcon -Rt svirt_sandbox_file_t /my/custom

#Configuration without a cnf file
docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql:tag --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci

docker run -it --rm mysql:tag --verbose --help
 
#Where to Store Data
docker run --rm --name mysql57 -v /opt/mysql57/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root123 -d -p 3306:3306 mysql:5.7


#Usage against an existing database
###如果使用已经包含数据库（特别是，一个mysql子目录）的数据目录启动mysql容器实例，则应该在运行命令行中省略$ MYSQL_ROOT_PASSWORD变量; 在任何情况下都会被忽略，并且预先存在的数据库不会以任何方式进行更改。
docker run --rm --name mysql57 -v /opt/mysql57/data:/var/lib/mysql -d -p 3306:3306 mysql:5.7

#Creating database dumps
###大多数普通工具都可以工作，尽管在某些情况下它们的使用可能会有些复杂，以确保它们可以访问mysqld服务器。 确保这一点的一个简单方法是使用docker exec并从同一个容器运行该工具，类似于以下内容：

docker exec mysql57 sh -c 'exec mysqldump --all-databases -uroot -p"$MYSQL_ROOT_PASSWORD"' > /root/all-databases.sql






















