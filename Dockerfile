FROM ghcr.io/openclaw/openclaw:latest

# 保持設定檔複製
COPY config.json /data/config.json
COPY config.json /app/data/config.json

EXPOSE 18789

# 將後半段修改為 openclaw daemon，繞過需要 TTY 的 crestodian 預設畫面
ENTRYPOINT ["/bin/sh", "-c", "openclaw onboard --non-interactive --accept-risk --skip-health && openclaw daemon"]
