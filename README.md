# Docker容器本地时区设置

如果您需要通过应用程序中的当前时间戳来执行某项操作，则应注意Docker环境的时区配置，因为它由主机配置独立运行。

## 解决方案
在Dockerfile中添加"tzdata"软件包, 此时会在/usr/share/zoneinfo目录下生成各时区配置信息。

## 构建镜像测试

### 构建
```bash
docker build -f Dockerfile -t docker-timezone-sample:latest .
```
### 查看时区
``` bash
$ docker run --rm -e TZ=Asia/Shanghai -it docker-timezone-sample:latest date
```

* Wed Nov 20 10:47:31 CST 2019


