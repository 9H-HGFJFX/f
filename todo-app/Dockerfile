FROM node:18-alpine
# 安装 Git（Alpine 镜像使用 apk 包管理器）
RUN apk add --no-cache git
# 其他配置保持不变
WORKDIR /app
COPY package*.json ./
# 安装 openssh-client 和相关依赖，然后执行 npm install
RUN apk update && \
    apk add openssh-client nodejs npm && \
    npm install
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]


