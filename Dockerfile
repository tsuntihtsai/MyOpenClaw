FROM ghcr.io/openclaw/openclaw:latest

# 保持設定檔複製
COPY config.json /data/config.json
COPY config.json /app/data/config.json

EXPOSE 18789

# 在 onboard 後面加上 --skip-health，叫它不要去戳 18789 埠，直接放行啟動！
ENTRYPOINT ["/bin/sh", "-c", "openclaw onboard --non-interactive --accept-risk --skip-health && openclaw"]
