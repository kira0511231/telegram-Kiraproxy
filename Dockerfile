FROM telegrammessenger/proxy:latest

ENV PORT=8443

# Генерируем секрет и выводим его
RUN /usr/local/bin/mtproto-proxy -g 1c.ru > /tmp/secret.txt

CMD sh -c "SECRET=$(cat /tmp/secret.txt); echo \"========================================\"; echo \"Your secret: $SECRET\"; echo \"Your link: tg://proxy?server=$(echo $RAILWAY_PUBLIC_DOMAIN)&port=${PORT}&secret=$SECRET\"; echo \"========================================\"; /usr/local/bin/mtproto-proxy -p ${PORT} -S $SECRET --fake-tls"
