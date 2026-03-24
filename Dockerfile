FROM telegrammessenger/proxy:latest

ENV PORT=8443

CMD ["/usr/local/bin/mtproto-proxy", "-p=${PORT}", "--fake-tls"]
