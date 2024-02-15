FROM node:latest

# エラー (mkdir: cannot create directory ‘/.vscode-server’: Permission denied) 対応
# .vscode-server の作成先を設定する
ENV APP_ROOT=/home
ENV HOME=${APP_ROOT}
WORKDIR ${APP_ROOT}
# もっと丁寧に権限を設定すべきだが、、
RUN chmod 777 ${APP_ROOT}

# container を止めないためのおまじない
ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]
