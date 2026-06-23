FROM ghcr.io/openclaw/openclaw:latest

# 保持設定檔複製
COPY config.json /data/config.json
COPY config.json /app/data/config.json

EXPOSE 18789

# 將後半段修正為 openclaw daemon run（或 openclaw daemon start），讓網關直接常駐在最前台監聽
ENTRYPOINT ["/bin/sh", "-c", "openclaw onboard --non-interactive --accept-risk --skip-health && openclaw daemon run"]
