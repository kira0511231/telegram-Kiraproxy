FROM v2fly/v2fly-core:latest

ENV PORT=8080

# Создаём конфиг для MTProto
RUN cat > /etc/v2ray/config.json <<EOF
{
  "inbounds": [{
    "port": ${PORT},
    "protocol": "mtproto",
    "settings": {
      "users": [{"secret": "auto"}]
    }
  }]
}
EOF

CMD ["run", "-c", "/etc/v2ray/config.json"]
