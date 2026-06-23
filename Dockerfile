FROM ghcr.io/openclaw/openclaw:latest

# 保留複製設定，做雙重保險
COPY config.json /data/config.json
COPY config.json /app/data/config.json

EXPOSE 18789

# 既然直接執行 openclaw 會觸發 onboarding 檢查，我們就在這裡把自動化參數加上去！
CMD ["openclaw", "--non-interactive", "--accept-risk"]
