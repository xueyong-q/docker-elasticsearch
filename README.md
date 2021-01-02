## 简介

本项目使用 Docker 搭建开发所需的 Elasticsearch。
## 搭建

复制项目下 `.env.example` 文件为 `.env` 并配置其内容。  

```
IMAGE_NAME          # 镜像标签名称
CONTAINER_NAME      # 实例名称
```

以下是容器映射至主机的端口：

| 容器          | 映射端口  |
| ------------- | --------- |
| elasticsearch | 9200,9300 |