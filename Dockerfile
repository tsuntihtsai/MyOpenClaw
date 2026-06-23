FROM ghcr.io/openclaw/openclaw:latest

# 保持設定檔複製
COPY config.json /data/config.json
COPY config.json /app/data/config.json

EXPOSE 18789

# 將 run 修正為 start
ENTRYPOINT ["/bin/sh", "-c", "openclaw onboard --non-interactive --accept-risk --skip-health && openclaw daemon start"]
