FROM telegrammessenger/proxy:latest

ENV PORT=8443
ENV SECRET=ee473ce5d4958eb5f968c87680a23854a0676f6f676c652e636f6d

CMD /usr/local/bin/mtproto-proxy -p ${PORT} -S ${SECRET} --fake-tls
