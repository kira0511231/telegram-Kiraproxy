FROM telegrammessenger/proxy:latest

ENV PORT=8443

# Генерируем секрет и выводим в логи
RUN /usr/local/bin/mtproto-proxy -g 1c.ru > /tmp/secret.txt

# Запускаем прокси с сгенерированным секретом
CMD sh -c "SECRET=$(cat /tmp/secret.txt) && echo \"Your proxy link: tg://proxy?server=$(echo $RAILWAY_PUBLIC_DOMAIN)&port=${PORT}&secret=${SECRET}\" && /usr/local/bin/mtproto-proxy -p=${PORT} -s=${SECRET} --fake-tls"
