#git-server-docker

#### introduce
This is a git server docker image for quick deployment of git server, please run it with docker-compose

#### Instructions for use

1. Execute the command to grant permission to execute the script: `sed -i -e 's/\r$//' *.sh && chmod -R 755 *.sh`
2. Run ./run-docker.sh [Note: The lower version of docker-compose cannot recognize .env and needs to be upgraded. The version used by the author is: 1.29.2]
3. Check the log: docker logs qiushaocloud-git-server

#### Contribute

1. Fork this warehouse
2. Create a new Feat_xxx branch
3. Submit the code
4. Create a new Pull Request


#### Sharer Information

1. Sharer email: qiushaocloud@126.com
2. [Share site](https://www.qiushaocloud.top)
3. [gitlab built by the sharer](https://gitlab.qiushaocloud.top/qiushaocloud)
3. [Shared by gitee](https://gitee.com/qiushaocloud/dashboard/projects)
3. [Shared by github](https://github.com/qiushaocloud?tab=repositories)