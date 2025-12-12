# 1. 使用官方 Python 3.9 的 slim 版基础镜像（体积小，包含 Python）
FROM python:3.9-slim

# 2. 设置工作目录
WORKDIR /app

# 3. 【关键优化】先升级 pip 并配置国内镜像源（强烈推荐）
# 使用清华镜像源，速度快且稳定
RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple && \
    pip install --upgrade pip

# 4. 安装 Flask 及其依赖
# 同样使用国内镜像源，避免下载超时
RUN pip install flask --no-cache-dir

# 5. 把当前目录的所有代码复制到容器的工作目录
COPY . .

# 6. 容器启动时运行的命令
CMD ["python", "./app.py"]
