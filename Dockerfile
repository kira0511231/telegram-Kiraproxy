FROM alpine:latest

RUN apk add --no-cache libc6-compat wget

# Скачиваем готовый бинарник
RUN wget -O /usr/bin/mtproto-proxy https://github.com/alexbers/mtprotoproxy/releases/latest/download/mtprotoproxy-linux-amd64 && \
    chmod +x /usr/bin/mtproto-proxy

ENV PORT=8080

CMD /usr/bin/mtproto-proxy -p ${PORT} --fake-tls
