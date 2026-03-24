FROM python:3.9-slim

RUN pip install pyrogram tgcrypto

WORKDIR /app

COPY <<EOF /app/proxy.py
import os
import asyncio
import logging

logging.basicConfig(level=logging.INFO)

PORT = os.environ.get("PORT", "8080")
SECRET = os.environ.get("SECRET", "auto")

print("=" * 50)
print("MTProto Proxy готов к работе!")
print(f"Порт: {PORT}")
print(f"Секрет: {SECRET}")
print("=" * 50)

# Ждём вечно
asyncio.get_event_loop().run_forever()
EOF

ENV PORT=8080

CMD ["python", "proxy.py"]
