FROM ghcr.io/openclaw/openclaw:latest

# 保持設定檔複製做為基底
COPY config.json /data/config.json
COPY config.json /app/data/config.json

EXPOSE 18789

# 完美的容器組合拳：初始化完成後，強迫 Gateway 在前台常駐執行，不要走作業系統的 systemd 服務
ENTRYPOINT ["/bin/sh", "-c", "openclaw onboard --non-interactive --accept-risk --skip-health && openclaw gateway run"]
