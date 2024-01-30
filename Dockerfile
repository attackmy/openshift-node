FROM ubuntu:latest

RUN apt-get update && \
  apt-get install -y openssh-server

# sshd config
RUN echo "[BEGIN] run" && \
  mkdir -p /var/run/sshd && \
#set root's password for ssh
  echo "root:password" | chpasswd && \
#enable root's login
  perl -p -i.org -e 's/^PermitRootLogin.+/PermitRootLogin yes/g' /etc/ssh/sshd_config && \
  perl -p -i.org -e 's/^UsePAM yes/UsePAM no/g' /etc/ssh/sshd_config && \
#don't use DNS
  echo 'UseDNS no' >> /etc/ssh/sshd_config && \
  echo "[END]   run"

EXPOSE 22
CMD /usr/sbin/sshd -D


#ENTRYPOINT ["tail"]
#CMD ["-f","/dev/null"]

#FROM node:latest
#FROM debian:latest

# for .vscode-server directory
#ENV APP_ROOT=/home
#ENV HOME=${APP_ROOT}
#WORKDIR ${APP_ROOT}
# for non-root user
#RUN chmod 777 /home

#CMD tail -f /dev/null
