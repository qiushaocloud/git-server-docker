FROM alpine:latest

RUN apk update && \
    apk add --no-cache \
    git \
    openssh

RUN addgroup -S git && \
    adduser -S -G git git

RUN mkdir /git-server

COPY start.sh /git-server/start.sh
COPY init-repo.sh /git-server/init-repo.sh
COPY sshd_config /etc/ssh/sshd_config

RUN chmod +x /git-server/*.sh

EXPOSE 22

CMD ["/git-server/start.sh"]
