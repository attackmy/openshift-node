FROM node:latest

# for .vscode-server directory
ENV APP_ROOT=/home
ENV HOME=${APP_ROOT}
WORKDIR ${APP_ROOT}
# for non-root user
RUN chmod 777 /home
# for /bin/nologin
ENV SHELL /bin/bash

ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]
