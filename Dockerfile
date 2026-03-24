FROM alpine:latest

# Устанавливаем mtproto-proxy из официального репозитория
RUN apk add --no-cache mtproto-proxy

ENV PORT=8080
ENV SECRET=auto

# Запускаем с авто-генерацией секрета
CMD mtproto-proxy -p ${PORT} --fake-tls
