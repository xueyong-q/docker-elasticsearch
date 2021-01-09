## 简介

本项目使用 Docker 搭建开发所需的 Elasticsearch。
## 搭建

复制项目下 `.env.example` 文件为 `.env` 并配置其内容。  

```
ES_VERSION             # ES 版本号
ES_CONTAINER_NAME      # 实例名称

KIBANA_VERSION         # kibana 版本号
```

将以上环境变量配置完成后接下来新建一个虚拟网络，如下命令：  
```sh
$ docker network create database_app
```

设置内核：
```sh
# 临时设置
$ sudo sysctl -w vm.max_map_count=262144
```
或者在 /etc/sysctl.conf 通过修改 vm.max_map_count 永久设置它，然后执行 `sudo sysctl -p` 重新加载配置。

直接在本项目下运行 `docker-compose up -d` 命令启动容器。  
启动容器完毕后可以使用 `docker ps` 命令查看容器是否启动成功。    
到此数据库已构建完成。

以下是容器映射至主机的端口：

| 容器               | 映射端口  |
| ------------------ | --------- |
| elasticsearch      | 9200,9300 |
| kibana             | 5601      |
| elasticsearch-head | 9100      |