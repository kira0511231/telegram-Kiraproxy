FROM telegrammessenger/proxy:latest

# Найдём все исполняемые файлы
RUN find / -name "*proxy*" -type f -executable 2>/dev/null || true
RUN ls -la /usr/local/bin/ 2>/dev/null || true
RUN ls -la /usr/bin/ 2>/dev/null || true

# Временно держим контейнер живым
CMD ["sh", "-c", "echo 'Container running'; sleep 3600"]
