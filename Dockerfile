FROM ubuntu:latest

# for .vscode-server directory
ENV APP_ROOT=/home
ENV HOME=${APP_ROOT}
WORKDIR ${APP_ROOT}
# for non-root user
RUN chmod 777 /home

USER 1012030000
RUN chsh -s /bin/bash

CMD tail -f /dev/null
