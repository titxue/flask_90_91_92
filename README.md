```shell
docker build -t my_combined_app .
docker run -d -p 90:90 -p 92:92 my_combined_app
```

使用 Nginx 在 Docker 容器的端口 90 上整合了运行在 0.0.0.0:91 的 Flask 应用和运行在 0.0.0.0:92 的静态资源服务器。