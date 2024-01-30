FROM ubuntu:latest

# for .vscode-server directory
ENV APP_ROOT=/home
ENV HOME=${APP_ROOT}
WORKDIR ${APP_ROOT}
# for non-root user
RUN chmod 777 /home

RUN usermod -s /bin/bash -u 1012030000

CMD tail -f /dev/null
