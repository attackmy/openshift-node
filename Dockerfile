FROM ubuntu:latest

ENV APP_ROOT=/opt/app-root
ENV HOME=${APP_ROOT}
WORKDIR ${APP_ROOT}

CMD tail -f /dev/null
