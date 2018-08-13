
# 启动一个新的mysql容器
#docker run --rm -d -p 3306:3306 --name mysql57 mysql:5.7

# 启动一个已有数据库文件及挂载外部配置文件目录的mysql容器
docker run --rm --name mysql57 -v /opt/mysql57/data:/var/lib/mysql -v /opt/mysql57/cnf:/etc/mysql/mysql.conf.d/ -d -p 3306:3306 mysql:5.7

# 测试启动一个数据库
docker run \
	--rm \
	--character-set-server=utf8mb4 \			# 默认字符集编码
	--collation-server=utf8mb4_unicode_ci \
	--name mysql57-she \
	-v ./mysql/data:/var/lib/mysql \
	-v ./mysql/cnf:/etc/mysql/conf.d \
	-e MYSQL_ROOT_PASSWORD=root123 \
	-d \
	-p 3306:3306 \
	mysql:5.7
