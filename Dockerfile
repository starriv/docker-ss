FROM alpine:3.6

LABEL maintainer="https://github.com/starriv"

ENV SSR_SERVER_PORT 50080
ENV SSR_PASSWORD 1q2w3e4r
ENV SSR_METHOD aes-128-cfb
ENV SSR_PROTOCOL auth_aes128_md5
ENV SSR_OBFS tls1.2_ticket_auth_compatible

RUN apk update && \
    apk --no-cache upgrade && \
    apk --no-cache add libsodium git python && \
    cd ~ && \
    git clone -b manyuser https://github.com/shadowsocksr-backup/shadowsocksr.git

EXPOSE $SSR_SERVER_PORT

CMD python /root/shadowsocksr/shadowsocks/server.py -p $SSR_SERVER_PORT -k $SSR_PASSWORD -m $SSR_METHOD -O $SSR_PROTOCOL -o $SSR_OBFS
