FROM ubuntu:latest

# for .vscode-server directory
ENV APP_ROOT=/home
ENV HOME=${APP_ROOT}
WORKDIR ${APP_ROOT}
# for non-root user
RUN chmod 777 /home

RUN cat /etc/passwd | sed s@/sbin/nologin@/bin/bash@ > /etc/passwd

CMD tail -f /dev/null
