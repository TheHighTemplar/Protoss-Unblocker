# 使用官方的 Nginx 基础镜像
FROM nginx:latest

# 将本地的 nginx.conf 配置文件复制到容器的 Nginx 配置目录
COPY nginx.conf /etc/nginx/nginx.conf

# 将验证页面和其他静态资源复制到容器的默认 Web 目录
COPY login.html /usr/share/nginx/html/login.html

# 暴露端口 80 以供外部访问
EXPOSE 80

# 设置容器启动时的命令
CMD ["nginx", "-g", "daemon off;"]
