FROM node:20-alpine

RUN apk add --no-cache \
    ffmpeg \
    python3 \
    py3-pip \
    && pip3 install --break-system-packages yt-dlp \
    && npm install -g n8n@1.19.4

EXPOSE 5678
CMD ["n8n", "start"]
