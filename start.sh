#!/bin/sh

if [ "$(ls -A /git-server/keys/)" ]; then
  cd /home/git
  cat /git-server/keys/*.pub > .ssh/authorized_keys
  chown -R git:git .ssh
  chmod 700 .ssh
  chmod -R 600 .ssh/*
fi

if [ "$(ls -A /git-server/repos/)" ]; then
  cd /git-server/repos
  chown -R git:git .
  chmod -R ug+rwX .
  find . -type d -exec chmod g+s '{}' +
fi

# Check if /git-server/repos/init-repo.sh exists
if [ ! -f /git-server/repos/init-repo.sh ]; then
  cp /git-server/init-repo.sh /git-server/repos/init-repo.sh
    chmod +x /git-server/repos/init-repo.sh
fi

# Start the restricted SSH server
/usr/sbin/sshd -D
