FROM telegrammessenger/proxy:latest

ENV PORT=8443

CMD ["telegram-proxy", "-p=${PORT}", "--fake-tls"]
