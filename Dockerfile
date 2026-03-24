FROM alpine:latest

RUN apk update && apk add --no-cache mtproto-proxy

ENV PORT=8080

EXPOSE 8080

CMD mtproto-proxy -p 8080 --fake-tls
