## 简介

本项目使用 Docker 搭建开发所需的 Elasticsearch。
## 搭建

复制项目下 `.env.example` 文件为 `.env` 并配置其内容。  

```
ES_IMAGE_NAME          # 镜像标签名称
ES_CONTAINER_NAME      # 实例名称
KIBANA_IMAGE_NAME      # kibana 镜像名称
HEAD_IMAGE_NAME        # elasticsearch-head 镜像名称
```

将以上环境变量配置完成后接下来新建一个虚拟网络，如下命令：  
```sh
$ docker network create database_app
```

新建好虚拟网络后直接在本项目下运行 `docker-compose up -d` 命令启动容器。  
启动容器完毕后可以使用 `docker ps` 命令查看容器是否启动成功。    
到此数据库已构建完成。

以下是容器映射至主机的端口：

| 容器               | 映射端口  |
| ------------------ | --------- |
| elasticsearch      | 9200,9300 |
| kibana             | 5601      |
| elasticsearch-head | 9100      |