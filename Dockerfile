FROM alpine:edge

RUN apk add --no-cache mtproto-proxy

ENV PORT=8080

CMD mtproto-proxy -p ${PORT} --fake-tls
