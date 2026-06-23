FROM ghcr.io/openclaw/openclaw:latest

# 保持設定檔複製做為基底
COPY config.json /data/config.json
COPY config.json /app/data/config.json

EXPOSE 18789

# 覆寫 Entrypoint，強迫使用 sh 執行一氣呵成的組合拳：
# 先執行 onboarding 自動化，完畢後直接啟動 openclaw
ENTRYPOINT ["/bin/sh", "-c", "openclaw onboard --non-interactive --accept-risk && openclaw"]
