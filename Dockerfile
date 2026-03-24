services:
  mtproto:
    container_name: mtproto-proxy
    image: ghcr.io/codinv/mtproto
    restart: unless-stopped
    ports:
      - 8443:8443
    environment:
      - SECRET=auto
      - PORT=8443
      - WORKERS=2
