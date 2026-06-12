FROM node:20-alpine

RUN apk add --no-cache \
    ffmpeg \
    python3 \
    py3-pip \
    && pip3 install --break-system-packages yt-dlp youtube-transcript-api \
    && npm install -g n8n

EXPOSE 5678
CMD ["n8n", "start"]
