FROM alpine:latest

RUN apk update && \
    apk add --no-cache \
    git \
    openssh

RUN ssh-keygen -A

WORKDIR /git-server/

RUN addgroup -S git && \
    adduser -S -G git git

RUN mkdir /git-server/keys \
  && mkdir /git-server/repos \
  && adduser -D -s /usr/bin/git-shell git \
  && echo git:gitpassword123 | chpasswd \
  && mkdir /home/git/.ssh

COPY start.sh /git-server/start.sh
COPY init-repo.sh /git-server/init-repo.sh
COPY sshd_config /etc/ssh/sshd_config

RUN chmod +x /git-server/*.sh

EXPOSE 22

CMD ["sh", "start.sh"]
