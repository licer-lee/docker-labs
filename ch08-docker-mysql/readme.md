
>https://hub.docker.com/r/library/mysql/

# 启动一个新的mysql容器
docker run --rm -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root123 --name mysql57 mysql:5.7


#Connect to MySQL from an application in another Docker container
docker run --name some-app --link some-mysql:mysql -d application-that-uses-mysql


#Connect to MySQL from the MySQL command line client
docker run -it --link some-mysql:mysql --rm mysql sh -c 'exec mysql -h"$MYSQL_PORT_3306_TCP_ADDR" -P"$MYSQL_PORT_3306_TCP_PORT" -uroot -p"$MYSQL_ENV_MYSQL_ROOT_PASSWORD"'

docker run -it --rm mysql mysql -hsome.mysql.host -usome-mysql-user -p
