FROM telegrammessenger/proxy:latest

ENV PORT=8443
ENV SECRET=d2f1a3b5c7e9d4f6a8b2c4d6e8f0a2c4

CMD /usr/local/bin/mtproto-proxy -p ${PORT} -S ${SECRET} --fake-tls
