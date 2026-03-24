FROM python:3.9-slim

# Устанавливаем зависимости для прокси
RUN pip install pyrogram tgcrypto

WORKDIR /app

# Создаём простой MTProto прокси на Pyrogram
COPY <<EOF /app/proxy.py
import os
import asyncio
import logging
from pyrogram import Client

logging.basicConfig(level=logging.INFO)

PORT = int(os.environ.get("PORT", 8080))
SECRET = os.environ.get("SECRET", "auto")

print("=" * 60)
print("MTProto Proxy запущен!")
print(f"Порт: {PORT}")
print("=" * 60)

# Создаём клиент, который работает как прокси
app = Client(
    "my_proxy",
    api_id=1,
    api_hash="auto",
    proxy={
        "scheme": "mtproto",
        "hostname": "0.0.0.0",
        "port": PORT,
        "secret": SECRET if SECRET != "auto" else None
    }
)

async def main():
    await app.start()
    print(f"Прокси работает на порту {PORT}")
    print(f"Секрет: {SECRET}")
    print(f"Ссылка: tg://proxy?server={os.environ.get('RAILWAY_PUBLIC_DOMAIN', 'localhost')}&port={PORT}&secret={SECRET}")
    await asyncio.Event().wait()

if __name__ == "__main__":
    asyncio.run(main())
EOF

ENV PORT=8080
ENV SECRET=auto

CMD ["python", "proxy.py"]
