
- 新建 network app_net
docker network create app_net

2. 部署db
 - docker stack deploy：支持version 3+，docker-compose：支持version3以下的
docker stack deploy -c docker-compose-db.yml docker-compose-db

docker-compose -f docker-compose-db.yml up -d

3. 部署app
docker stack deploy -c docker-compose-zipkin.yml docker-compose-zipkin

docker-compose -f docker-compose-zipkin.yml up -d

4. 验证
docker exec -it zipkin ping mysql

5. 应用
浏览器访问： http:// ip:8082/zipkin

6. 停止
