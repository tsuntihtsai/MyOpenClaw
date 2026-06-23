FROM ghcr.io/openclaw/openclaw:latest

# 強制將設定檔塞入 OpenClaw 預設的資料夾中
COPY config.json /data/config.json
COPY config.json /app/data/config.json

EXPOSE 18789

# 最新版直接執行 openclaw 即可，不需要加上 serve
CMD ["openclaw"]
