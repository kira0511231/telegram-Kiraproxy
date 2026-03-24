FROM telegrammessenger/proxy:latest

ENV PORT=8443

# Без SECRET прокси сам сгенерирует его и покажет в логах
CMD /usr/local/bin/mtproto-proxy -p ${PORT} --fake-tls
