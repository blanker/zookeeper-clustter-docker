# docker-compose.yml
运行docker-compose up -d 启动3个zk服务

由于zk镜像使用给的openjdk-8-jre来源于alpine镜像，该镜像没有时区服务，于是到3个容器中安装服务并修改为Asia/Shanghai

```bash
apk update && apk add curl bash tree tzdata \
        && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
```

并在宿主机上开放3个端口
```bash
➜  zk sudo firewall-cmd --zone=public --permanent --add-port=22181-22183/tcp
➜  zk sudo firewall-cmd --reload

```
