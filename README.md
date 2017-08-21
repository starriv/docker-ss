# docker-ssr

## 使用方法

0x1: 直接使用
```
docker pull starriv/shadowsocksr
docker run starriv/shadowsocksr:latest -name shadowsocksr -p 50080:50080
```

0x2: 从当前项目构建
```
https://github.com/starriv/docker-ssr.git
cd docker-ssr
修改 Dockerfile 参数
docker build -t shadowsocksr:latest .
sudo docker run -d --name shadowsocksr -p 本地端口:容器端口

```
