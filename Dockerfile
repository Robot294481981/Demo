# 指定基础镜像
FROM myjdk17:latest
# 设置时区
ENV TZ=Asia/Shanghai
# 设置工作目录
WORKDIR /app
# 复制JAR文件
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar
# 暴露应用程序的端口
EXPOSE 8080
# 定义应用程序的启动命令
ENTRYPOINT java -jar app.jar