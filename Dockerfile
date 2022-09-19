FROM node:16.17.0-alpine

# ARGはdockerfile内でのみ有効な変数で、buildの際にで指定する

ARG WORKDIR

# 環境変数＝OSが持っている変数
# HOME: HOMEディレクトリを指定
# LANG: ロケール
# TZ: タイムゾーン
ENV HOME=/${WORKDIR} \
    LANG=C.UTF-8 \
    TZ=Asia/Tokyo \
    # Nuxtのデフォルトはlocalhostのみからのアクセスしか許可していいない
    HOST=0.0.0.0

WORKDIR ${HOME}