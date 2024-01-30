FROM node:latest

USER node

ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]

#FROM node:latest
#FROM debian:latest

# for .vscode-server directory
#ENV APP_ROOT=/home
#ENV HOME=${APP_ROOT}
#WORKDIR ${APP_ROOT}
# for non-root user
#RUN chmod 777 /home

#CMD tail -f /dev/null
