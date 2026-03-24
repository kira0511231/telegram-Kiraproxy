FROM seriyps/mtproto-proxy:latest

ENV PORT=8443

CMD mtproto-proxy -p ${PORT} --fake-tls
