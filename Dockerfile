FROM python:3.8-alpine

# 安装 Nginx
RUN apk update && apk add nginx

# 创建 Nginx 运行用户
RUN adduser -D -g 'www' www && \
    mkdir /www && \
    chown -R www:www /var/lib/nginx && \
    chown -R www:www /www

# 安装 Flask
RUN pip install Flask

# 复制 Flask 应用和静态资源到容器
COPY app.py /app/
COPY static /static/

# 复制 Nginx 配置到容器
COPY nginx.conf /etc/nginx/nginx.conf

WORKDIR /app

# 启动 Nginx, Flask app 和静态资源服务器
CMD ["sh", "-c", "nginx && python -m http.server --bind 0.0.0.0 -d /static 92 & python app.py"]
