FROM seriyps/mtproto-proxy:latest

ENV PORT=8080

CMD /usr/local/bin/mtproto-proxy -p 8080 --fake-tls
