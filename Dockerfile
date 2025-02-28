# 使用基础镜像
FROM zyddnys/manga-image-translator:main

# 设置工作目录
WORKDIR /app

# 创建结果目录
RUN mkdir -p /app/result


# 设置环境变量（Heroku 会覆盖 $PORT，因此不需要在 Dockerfile 中设置）
ENV LANG=ENG
ENV MODE=web
ENV HOST=0.0.0.0

# 运行命令（使用 $PORT 环境变量）
CMD ["-l", "ENG", "--manga2eng", "-v", "--mode", "web", "--host=0.0.0.0", "--port=$PORT"]
