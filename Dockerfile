FROM quay.io/xtrime-ru/telegram-mtproto-proxy:latest

ENV PORT=8080

CMD /usr/bin/mtproto-proxy -p ${PORT} --fake-tls
