FROM telegrammessenger/proxy:latest

ENV PORT=8443

CMD ["-p=${PORT}", "--fake-tls"]
