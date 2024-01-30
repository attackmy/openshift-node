FROM ubuntu:latest

# for .vscode-server directory
ENV APP_ROOT=/home
ENV HOME=${APP_ROOT}
WORKDIR ${APP_ROOT}

RUN chmod 777 /home

CMD tail -f /dev/null
