FROM alpine:latest

# Устанавливаем прокси
RUN apk add --no-cache mtproto-proxy

# Создаём папку для конфигов
RUN mkdir -p /var/lib/mtproto-proxy

ENV PORT=8080

# Запускаем на порту 8080
CMD mtproto-proxy -p ${PORT} --fake-tls
