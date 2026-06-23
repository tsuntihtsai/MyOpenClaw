FROM ghcr.io/openclaw/openclaw:latest

# 強制將設定檔塞入 OpenClaw 預設的資料夾中
COPY config.json /data/config.json
COPY config.json /app/data/config.json

EXPOSE 18789

CMD ["/app/openclaw", "serve"]
