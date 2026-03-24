FROM telegrammessenger/proxy:latest

ENV PORT=8443

# Запускаем без указания секрета
CMD /usr/local/bin/mtproto-proxy -p ${PORT} --fake-tls
