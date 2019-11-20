# Docker容器本地时区设置

如果您需要通过应用程序中的当前时间戳来执行某项操作，则应注意Docker环境的时区配置，因为它由主机配置独立运行。

## 构建镜像测试

``` bash
$ docker run --rm -e TZ=Asia/Shanghai -it docker-timezone-sample:latest date
```

