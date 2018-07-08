# docker-php5.3

PHP5.3 + Apache の Docker サンプル (スケルトン)

Ubuntu 12.04

セキュリティ脆弱なので、本番運用しないこと


# 概要

html ディレクトリ内においたPHPファイルが、 http://127.0.0.1/ で見れます


# 使い方

### Dockerイメージ作成

    make build

### Dockerコンテナ起動

    make up

### Dockerコンテナ削除

    make down

### 起動中の Docker コンテナで Bash を起動

    make bash


### Dockerコンテナが無い状態で Bash だけ起動

    make bash2
