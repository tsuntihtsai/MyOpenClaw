FROM ghcr.io/openclaw/openclaw:latest

# 強制將設定檔塞入 OpenClaw 預設的資料夾中
COPY config.json /data/config.json
COPY config.json /app/data/config.json

EXPOSE 18789

# 讓系統直接調用官方內建環境的 openclaw 指令即可
CMD ["openclaw", "serve"]
